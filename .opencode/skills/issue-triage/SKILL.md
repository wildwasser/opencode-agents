---
name: issue-triage
description: Triage and manage GitHub issues. Use when reviewing issues or planning work.
---

## Triage Process

### 1. Review Issue
```bash
# List open issues
gh issue list

# View specific issue
gh issue view <number>

# List with labels
gh issue list --label "bug"
```

### 2. Validate Issue

#### For Bugs
- [ ] Can the issue be reproduced?
- [ ] Is there enough information?
- [ ] Is it a duplicate?
- [ ] Is it actually a bug (not user error)?

#### For Features
- [ ] Is the request clear?
- [ ] Does it align with project goals?
- [ ] Is it a duplicate?
- [ ] Is scope reasonable?

### 3. Apply Labels
```bash
# Add labels
gh issue edit <number> --add-label "bug,priority:high"

# Remove labels
gh issue edit <number> --remove-label "needs-triage"
```

#### Standard Labels

| Label | Description |
|-------|-------------|
| `bug` | Something isn't working |
| `enhancement` | New feature request |
| `documentation` | Docs improvement |
| `good-first-issue` | Good for newcomers |
| `help-wanted` | Extra attention needed |
| `duplicate` | Already exists |
| `wontfix` | Won't be addressed |
| `invalid` | Not valid issue |

#### Priority Labels
- `priority:critical` - Production down, security issue
- `priority:high` - Major functionality broken
- `priority:medium` - Important but not urgent
- `priority:low` - Nice to have

#### Size Labels
- `size:S` - Small, < 1 day
- `size:M` - Medium, 1-3 days
- `size:L` - Large, 3-5 days
- `size:XL` - Extra large, needs breakdown

### 4. Respond & Assign
```bash
# Add comment
gh issue comment <number> --body "Thanks for reporting! I can reproduce this."

# Assign
gh issue edit <number> --add-assignee @username

# Close as duplicate
gh issue close <number> --comment "Duplicate of #123" --reason "not planned"

# Close as completed
gh issue close <number> --comment "Fixed in #456"
```

### 5. Link to Project
```bash
# Add to project board
gh issue edit <number> --add-project "Project Name"
```

## Triage Response Templates

### Needs More Info
```
Thanks for reporting! To help us investigate, could you provide:
- Steps to reproduce
- Expected vs actual behavior
- Environment (OS, version, etc.)
```

### Duplicate
```
Thanks for reporting! This appears to be a duplicate of #XXX. 
I'm closing this issue, but please follow the linked issue for updates.
```

### Won't Fix
```
Thanks for the suggestion! After consideration, we've decided not to 
implement this because [reason]. Feel free to discuss further if you disagree.
```
