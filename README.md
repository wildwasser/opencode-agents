# opencode-agents

Multi-agent AI development templates for [opencode](https://github.com/sst/opencode).

## What Is This?

A ready-to-use template for setting up **multi-agent AI development workflows** with opencode. Instead of a single AI assistant doing everything, work is delegated to specialized agents—each optimized for their role.

## The Agents

### Core Agents

| Agent | Role | Key Trait |
|-------|------|-----------|
| **Oscar** | Orchestrator | Coordinates, delegates, synthesizes—never does the work himself |
| **Scout** | Researcher + Planner | Digs deep into codebases, creates actionable implementation plans |
| **Ivan** | Implementor | Writes code, runs tests, follows specs precisely |
| **Jester** | Truth-Teller (default) | Challenges assumptions, finds blind spots (called for risky changes) |

### Jester Variants

| Agent | Model | Use Case |
|-------|-------|----------|
| **jester** | Claude Opus | Default truth-teller |
| **jester_opus** | Claude Opus | Explicit Opus variant |
| **jester_codex** | Qwen3 Coder | Code-focused analysis |
| **jester_qwen** | Grok | Alternative perspective |

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

## Jester Consensus Pattern

For high-stakes decisions, run all three Jester variants in parallel and synthesize their feedback:

```
Oscar
  │
  ├──→ @jester_opus ──┐
  ├──→ @jester_codex ─┼──→ Synthesize → Decision
  └──→ @jester_qwen ──┘
```

**When to use Jester Consensus:**

- **Major architectural decisions** — Changing core abstractions, adding new patterns
- **Risky refactors** — Changes touching >5 files or critical paths
- **Diverse perspectives needed** — When you want multiple AI viewpoints on a problem
- **Breaking ties** — When the team is stuck or going in circles

**How it works:**

1. Oscar dispatches the same question to all three Jesters in parallel
2. Each Jester analyzes independently using their underlying model
3. Oscar synthesizes the responses, looking for:
   - **Agreement** — All three flag the same issue = high confidence
   - **Disagreement** — Different concerns = explore each angle
   - **Unique insights** — One Jester sees something others miss = investigate

Most of what any single Jester says is noise, but consensus across models is signal.

## Installation

### 1. Install opencode

```bash
curl -fsSL https://opencode.ai/install | bash
```

Or see [opencode installation docs](https://github.com/sst/opencode#installation).

### 2. Run the installer

```bash
# Clone this repo
git clone https://github.com/yourusername/opencode-agents.git
cd opencode-agents

# Run the installer script
./install.sh
```

The installer copies agent definitions to `~/.config/opencode/agent/`.

### 3. Configure opencode

```bash
# Copy the example configuration
cp opencode.json.example ~/.config/opencode/opencode.json

# Edit to customize models (optional)
nano ~/.config/opencode/opencode.json
```

### 4. Copy AGENTS.md to your project

```bash
# Copy and customize the template AGENTS.md
cp AGENTS.md /path/to/your/project/
```

Edit `AGENTS.md` in your project to add project-specific context.

### 5. Start using agents

```bash
# In your project directory
opencode
```

Then talk to Oscar:

```
@oscar: I need to add user authentication to the app
```

## Configuration

The `opencode.json.example` file contains the full agent configuration:

```json
{
  "model": "zen/claude-opus-4-5",
  "default_agent": "oscar",
  "agent": {
    "oscar": { ... },
    "scout": { ... },
    "ivan": { ... },
    "jester": { "model": "zen/claude-opus-4-5", ... },
    "jester_opus": { "model": "zen/claude-opus-4-5", ... },
    "jester_codex": { "model": "zen/qwen3-coder-480b", ... },
    "jester_qwen": { "model": "zen/grok-3", ... }
  }
}
```

### Customizing Models

Edit `~/.config/opencode/opencode.json` to:

- **Change the default model** — Update the top-level `"model"` field
- **Use different Jester models** — Swap model providers for each variant
- **Add new variants** — Create additional Jester entries with different models

### Why Multiple Jesters?

Different AI models have different strengths and blind spots:

- **Claude Opus** — Strong reasoning, good at finding logical flaws
- **Qwen3 Coder** — Code-focused, catches implementation issues
- **Grok** — Alternative perspective, different training data

Running all three in parallel for critical decisions gives you diverse viewpoints.

## File Structure

```
opencode-agents/
├── .opencode/agent/
│   ├── oscar.md          # Orchestrator
│   ├── scout.md          # Researcher + Planner
│   ├── ivan.md           # Implementor
│   └── jester.md         # Truth-Teller
├── AGENTS.md             # Template for project-specific context
├── README.md             # This file
├── install.sh            # Installer script
└── opencode.json.example # Example configuration
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
