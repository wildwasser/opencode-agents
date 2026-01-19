---
name: python-code-review
description: Review Python code for quality, type hints, docstrings, and PEP8 compliance. Use when reviewing Python files or PRs.
---

## Review Checklist

### Code Quality
- [ ] Type hints on all public functions and methods
- [ ] Docstrings with Args/Returns/Raises sections
- [ ] PEP8 compliance (use ruff for checking)
- [ ] No mutable default arguments (`def foo(items=[])` is BAD)
- [ ] Proper exception handling (specific exceptions, not bare `except:`)
- [ ] No hardcoded secrets or credentials

### Structure
- [ ] Functions are focused and do one thing
- [ ] Classes follow single responsibility principle
- [ ] Imports are organized (stdlib, third-party, local)
- [ ] No circular imports

### Testing Considerations
- [ ] New code has corresponding tests
- [ ] Edge cases are handled
- [ ] Error paths are tested

## Commands
```bash
# Lint with ruff
.venv/bin/ruff check .

# Type check with mypy
.venv/bin/mypy --strict src/

# Format check
.venv/bin/ruff format --check .
```

## Common Issues to Flag
- `from typing import *` - import specific types
- Missing `__init__.py` in packages
- Using `print()` instead of proper logging
- Catching `Exception` instead of specific exceptions
- Not using context managers for file/resource handling
