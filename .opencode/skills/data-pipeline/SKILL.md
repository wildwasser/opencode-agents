---
name: data-pipeline
description: Build and validate data pipelines. Use when processing datasets or building ETL workflows.
---

## Pipeline Structure

```
[Extract] → [Validate] → [Transform] → [Validate] → [Load]
```

## Data Validation

### Input Validation
```python
import pandas as pd

def validate_input(df: pd.DataFrame) -> None:
    """Validate input data before processing."""
    # Check required columns
    required = ["id", "timestamp", "value"]
    missing = set(required) - set(df.columns)
    if missing:
        raise ValueError(f"Missing columns: {missing}")
    
    # Check for nulls in critical columns
    null_counts = df[required].isnull().sum()
    if null_counts.any():
        raise ValueError(f"Null values found: {null_counts[null_counts > 0]}")
    
    # Check data types
    assert df["id"].dtype == "int64", "id must be integer"
    assert pd.api.types.is_datetime64_any_dtype(df["timestamp"]), "timestamp must be datetime"
```

### Output Validation
```python
def validate_output(df: pd.DataFrame, input_count: int) -> None:
    """Validate output data after processing."""
    # Row count check
    if len(df) == 0:
        raise ValueError("Output is empty")
    
    # No duplicates on key
    if df["id"].duplicated().any():
        raise ValueError("Duplicate IDs in output")
    
    # Sanity check on row count
    if len(df) > input_count * 2:
        raise ValueError(f"Suspicious row explosion: {input_count} → {len(df)}")
```

## Common Transformations

### Handle Missing Values
```python
# Drop rows with any nulls
df = df.dropna()

# Fill with default
df["value"] = df["value"].fillna(0)

# Fill with interpolation
df["value"] = df["value"].interpolate(method="linear")

# Fill with group mean
df["value"] = df.groupby("category")["value"].transform(
    lambda x: x.fillna(x.mean())
)
```

### Handle Duplicates
```python
# Remove exact duplicates
df = df.drop_duplicates()

# Remove duplicates on key, keep latest
df = df.sort_values("timestamp").drop_duplicates(subset=["id"], keep="last")
```

### Type Conversions
```python
# String to datetime
df["timestamp"] = pd.to_datetime(df["timestamp"], format="%Y-%m-%d")

# String to numeric (with error handling)
df["value"] = pd.to_numeric(df["value"], errors="coerce")

# Category for memory efficiency
df["status"] = df["status"].astype("category")
```

## Pipeline Pattern
```python
from typing import Callable
import pandas as pd

def create_pipeline(*steps: Callable[[pd.DataFrame], pd.DataFrame]):
    """Create a pipeline from transformation steps."""
    def pipeline(df: pd.DataFrame) -> pd.DataFrame:
        for step in steps:
            df = step(df)
        return df
    return pipeline

# Usage
pipeline = create_pipeline(
    validate_input,
    clean_nulls,
    normalize_values,
    validate_output,
)
result = pipeline(raw_data)
```

## Logging & Monitoring
```python
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

def transform_with_logging(df: pd.DataFrame) -> pd.DataFrame:
    logger.info(f"Input rows: {len(df)}")
    
    # Transform
    result = df.dropna()
    
    dropped = len(df) - len(result)
    logger.info(f"Dropped {dropped} rows ({dropped/len(df)*100:.1f}%)")
    logger.info(f"Output rows: {len(result)}")
    
    return result
```

## Checkpoints
```python
def save_checkpoint(df: pd.DataFrame, name: str) -> None:
    """Save intermediate results for debugging."""
    path = f"checkpoints/{name}.parquet"
    df.to_parquet(path)
    logger.info(f"Checkpoint saved: {path}")
```
