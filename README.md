# opencode-agents

Multi-agent AI development templates for [opencode](https://github.com/sst/opencode).

## What Is This?

A ready-to-use template for setting up **multi-agent AI development workflows** with opencode. Instead of a single AI assistant doing everything, work is delegated to specialized agents—each optimized for their role.

## The Four Agents

| Agent | Role | Key Trait |
|-------|------|-----------|
| **Oscar** | Orchestrator | Coordinates, delegates, synthesizes—never does the work himself |
| **Scout** | Researcher + Planner | Digs deep into codebases, creates actionable implementation plans |
| **Ivan** | Implementor | Writes code, runs tests, follows specs precisely |
| **Jester** | Truth-Teller | Challenges assumptions, finds blind spots (called for risky changes) |

### The Orchestrator Pattern

```
User Request
    │
    ▼
  Oscar ─────────────────────────────┐
    │                                │
    ├──→ Scout (research + plan)     │
    │         │                      │
    │         ├──→ Jester (challenge)│ ← optional
    │         │                      │
    │         ▼                      │
    └──→ Ivan (implement) ──→ Done ◄─┘
```

**Why this pattern?**

- **Context efficiency** — Oscar stays lean, delegating heavy lifting to specialists
- **Separation of concerns** — Research, planning, and implementation are distinct phases
- **Quality gates** — Jester provides adversarial review for risky changes
- **Parallel execution** — Independent tasks can run simultaneously

## Quick Start

### 1. Install opencode

```bash
curl -fsSL https://opencode.ai/install | bash
```

Or see [opencode installation docs](https://github.com/sst/opencode#installation).

### 2. Copy to your project

```bash
# Clone this repo
git clone https://github.com/yourusername/opencode-agents.git

# Copy agent definitions to your project
cp -r opencode-agents/.opencode/agent/ /path/to/your/project/.opencode/agent/

# Copy and customize the template AGENTS.md
cp opencode-agents/AGENTS.md /path/to/your/project/
```

### 3. Customize AGENTS.md

Edit `AGENTS.md` in your project to add:
- Project overview and goals
- Setup instructions
- Project structure
- Architecture documentation

### 4. Start using agents

```bash
# In your project directory
opencode
```

Then talk to Oscar:

```
@oscar: I need to add user authentication to the app
```

Oscar will:
1. Dispatch Scout to research the codebase and create a plan
2. Review the plan with you
3. Dispatch Ivan to implement
4. (Optionally) Consult Jester for complex/risky changes

## File Structure

```
your-project/
├── .opencode/
│   └── agent/
│       ├── oscar.md   # Orchestrator
│       ├── scout.md   # Researcher + Planner
│       ├── ivan.md    # Implementor
│       └── jester.md  # Truth-Teller
└── AGENTS.md          # Project-specific context (customize this)
```

## Key Principles

1. **Oscar delegates everything** — He coordinates but never reads files or writes code
2. **Scout digs deep, plans lean** — Research flows naturally into actionable tasks
3. **Ivan follows specs** — No improvisation; if the plan is unclear, ask
4. **Jester challenges** — Called for complex refactors (>5 files) or risky changes

## When to Call Jester

Jester runs at high temperature (0.8) intentionally—he's a wildcard oracle. Call him when:

- Complex refactors touching >5 files
- Risky architectural changes
- The team is stuck or going in circles
- A plan feels "correct" but dead
- Everyone agrees too quickly (dangerous!)

Most of what Jester says is noise, but buried in there is golden insight. Pan for gold.

## Customization

The agent files are designed to be project-agnostic. Customize them by:

1. **Adjusting tool permissions** in the frontmatter
2. **Adding project-specific rules** to `AGENTS.md`
3. **Modifying code standards** in Ivan's file for your language/framework

## License

MIT
