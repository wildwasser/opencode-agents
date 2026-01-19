# AGENTS.md - Multi-Agent Development Template

> **This is a template AGENTS.md - customize for your project**

## Project Overview

<!-- TODO: Add project-specific content -->
<!-- Describe what your project does, its goals, and key features -->

## The Agent System

This project uses a multi-agent system for context-efficient development.

### Agents

#### Core Agents

| Agent | Role | Mode |
|-------|------|------|
| **@oscar** | Orchestrator - coordinates, delegates, synthesizes | primary |
| **@scout** | Researcher + Planner - deep analysis, actionable plans | subagent |
| **@ivan** | Implementor - writes code, runs tests | subagent |
| **@jester** | Truth-Teller (default) - challenges assumptions | subagent |

#### Jester Variants

| Agent | Model | Purpose |
|-------|-------|---------|
| **@jester** | Claude Opus | Default truth-teller |
| **@jester_opus** | Claude Opus | Explicit Opus variant |
| **@jester_codex** | Qwen3 Coder | Code-focused analysis |
| **@jester_qwen** | Grok | Alternative perspective |

### Workflow

```
User Request
    │
    ▼
  Oscar ─────────────────────────────┐
    │                                │
    ├──→ Scout (research + plan)     │
    │         │                      │
    │         ├──→ Jester (challenge)│ ← optional, for complex/risky changes
    │         │                      │
    │         ▼                      │
    └──→ Ivan (implement) ──→ Done ◄─┘
```

### Jester Consensus Pattern

For high-stakes decisions, run all three Jester variants in parallel:

```
Oscar
  │
  ├──→ @jester_opus ──┐
  ├──→ @jester_codex ─┼──→ Synthesize → Decision
  └──→ @jester_qwen ──┘
```

**When to use:**
- Major architectural decisions
- Risky refactors (>5 files)
- When you want diverse AI perspectives
- When the team is stuck

**How to interpret:**
- **All agree** = High confidence signal
- **Disagree** = Explore each angle
- **One unique insight** = Investigate further

### Key Principles

- **Oscar delegates everything** - preserves context
- **Scout digs deep, plans lean** - research flows into actionable plans
- **Ivan follows specs** - no improvisation
- **Jester challenges** - called for complex refactors (>5 files), risky changes, or when stuck

## Quick Start

<!-- TODO: Add project-specific content -->
<!-- Add setup instructions, common commands, and daily workflow -->

```bash
# Setup
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt

# Run tests
.venv/bin/pytest tests/ -v
```

## Python Environment

**CRITICAL:** Always use the project's virtual environment for ALL Python operations:

```bash
# Running scripts - ALWAYS use .venv/bin/python
.venv/bin/python scripts/your_script.py

# Running tests - ALWAYS use .venv/bin/pytest  
.venv/bin/pytest tests/ -v

# Installing packages
.venv/bin/pip install <package>
```

**NEVER** use bare `python`, `pytest`, or `pip` commands - they may use the wrong Python installation and miss project dependencies.

## Workflow Rules

<workflow>
### After Code Fixes
When `@ivan` completes a fix for a GitHub issue:
1. **Commit** with message format: `fix #<issue_number>: <short description>`
2. **Push** to remote immediately
3. **Close issue** with `gh issue close <number> --reason completed --comment "<summary of fix>"`
4. **Move to next** issue in priority order

### Commit Frequency
- **In branches:** Commit after EVERY meaningful change (don't batch)
- **Small, atomic commits** are preferred over large ones
- **Always push** after committing - don't let commits pile up locally

### Branch Workflow
When working in a feature branch:
1. Commit and push frequently (after each fix/change)
2. When all issues for the branch are complete:
   - Check if other branches exist: `git branch -a`
   - If **no other branches**: prepare PR and merge to main
   - If **other branches exist**: prepare PR but **do NOT merge** - ask user first
3. Always use `gh pr create` with clear summary

### Issue Management
- Close issues **immediately** after fix is verified (tests pass)
- Always include in close comment:
  - What was changed
  - Problems encountered during the work on this issue, and how you solved them
  - Which file(s) were modified
  - Commit hash if relevant
- Link related issues in comments when applicable

### Commit Message Format
```
<type> #<issue>: <description>

Types: fix, feat, refactor, docs, test, chore
```

Examples:
- `fix #42: handle null response from API`
- `feat #15: add user authentication`
- `refactor #30: extract validation logic`
</workflow>

## Scripts

<!-- TODO: Add project-specific content -->
<!-- Document your project's scripts and their purposes -->

| Script | Purpose |
|--------|---------|
| `example.py` | Description of what it does |

## Project Structure

<!-- TODO: Add project-specific content -->
<!-- Document your project's directory structure -->

```
your-project/
├── AGENTS.md                 # This file
├── requirements.txt          # Dependencies
├── src/                      # Source code
├── tests/                    # Unit tests
└── scripts/                  # Utility scripts
```

## Architecture

<!-- TODO: Add project-specific content -->
<!-- Document key architectural patterns, abstractions, and design decisions -->

## Key Modules

<!-- TODO: Add project-specific content -->
<!-- Document the main modules and their responsibilities -->

| Module | Purpose |
|--------|---------|
| `module.py` | Description |

## Configuration

<!-- TODO: Add project-specific content -->
<!-- Document configuration files and environment variables -->

## Code Style

- **Python:** 3.12+
- **Types:** Type hints in all function signatures
- **Docs:** Google-style docstrings
- **Naming:** snake_case for functions/variables, UPPER_CASE for constants

<!-- TODO: Add project-specific code style rules if needed -->
