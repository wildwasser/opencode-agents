---
name: python-testing
description: Write and run Python tests with pytest. Use when creating tests or debugging test failures.
---

## Testing Standards

### Test Structure
```python
def test_function_name_does_expected_behavior():
    # Arrange
    input_data = create_test_data()
    
    # Act
    result = function_under_test(input_data)
    
    # Assert
    assert result == expected_value
```

### Fixtures
```python
import pytest

@pytest.fixture
def sample_data():
    """Provide sample data for tests."""
    return {"key": "value"}

@pytest.fixture
def mock_api(mocker):
    """Mock external API calls."""
    return mocker.patch("module.api_call")
```

### Parametrization
```python
@pytest.mark.parametrize("input,expected", [
    (1, 2),
    (2, 4),
    (0, 0),
    (-1, -2),
])
def test_double(input, expected):
    assert double(input) == expected
```

## Commands
```bash
# Run all tests
.venv/bin/pytest -v

# Run with coverage
.venv/bin/pytest --cov=src --cov-report=term-missing

# Run specific file
.venv/bin/pytest tests/test_module.py -v

# Run specific test
.venv/bin/pytest tests/test_module.py::test_function -v

# Run tests matching pattern
.venv/bin/pytest -k "test_user" -v

# Stop on first failure
.venv/bin/pytest -x
```

## Best Practices
- Test file names: `test_<module>.py`
- Test function names: `test_<function>_<scenario>`
- One assertion per test when possible
- Use fixtures for setup/teardown
- Mock external dependencies (APIs, databases, file system)
- Aim for >80% coverage on new code
