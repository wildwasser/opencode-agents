---
name: pr-review
description: Review pull requests for code quality, security, and conventions. Use when reviewing PRs or preparing code for review.
---

## PR Review Process

### 1. Understand Context
```bash
# View PR details
gh pr view <number>

# See changed files
gh pr diff <number> --name-only

# View full diff
gh pr diff <number>

# Checkout PR locally
gh pr checkout <number>
```

### 2. Review Checklist

#### Code Quality
- [ ] Code is readable and well-organized
- [ ] No unnecessary complexity
- [ ] Follows project conventions
- [ ] No debug code or commented-out code

#### Functionality
- [ ] Solves the stated problem
- [ ] Edge cases handled
- [ ] Error handling is appropriate
- [ ] No breaking changes (or documented if intentional)

#### Security
- [ ] No hardcoded secrets
- [ ] Input validation present
- [ ] No SQL injection vulnerabilities
- [ ] Dependencies are trusted

#### Testing
- [ ] Tests added for new functionality
- [ ] Existing tests still pass
- [ ] Edge cases tested

#### Documentation
- [ ] Code comments where needed
- [ ] README updated if needed
- [ ] API docs updated if needed

### 3. Provide Feedback
```bash
# Approve
gh pr review <number> --approve --body "LGTM! Nice work."

# Request changes
gh pr review <number> --request-changes --body "Please address the following..."

# Comment only
gh pr review <number> --comment --body "Some suggestions..."

# Add line comment
gh pr review <number> --comment --body "Consider using X here" 
```

### 4. Merge (if approved)
```bash
# Merge with squash (recommended)
gh pr merge <number> --squash

# Merge with rebase
gh pr merge <number> --rebase

# Regular merge
gh pr merge <number> --merge
```

## Review Tone
- Be constructive, not critical
- Explain the "why" behind suggestions
- Acknowledge good work
- Ask questions instead of demanding changes
