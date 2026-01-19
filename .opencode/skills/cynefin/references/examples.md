# Cynefin Examples

## Example 1: Software Bug

### Scenario: "The checkout page is showing a 500 error"

**Domain**: Initially **Chaotic** if it's production and customers are affected

**Why**: Immediate impact, need to stabilize before analyzing

**Response**:
1. **ACT**: Roll back recent deploy OR switch traffic to backup
2. **SENSE**: Check logs, identify scope
3. **RESPOND**: Now move to Complicated for diagnosis

**Transition to Complicated**:
Once stable, this becomes a Complicated problem:
- Engineers can analyze the root cause
- Multiple diagnostic approaches exist
- Expert knowledge helps

**Common Mistake**: Starting with "let's analyze" during an outage (treating Chaotic as Complicated)

---

## Example 2: Market Expansion

### Scenario: "Should we expand into the European market?"

**Domain**: **Complex**

**Why**:
- Cause and effect unclear in advance
- Can't predict how European customers will respond
- Patterns will only emerge through action

**Response**:
1. **PROBE**: Launch in one country with minimal investment
2. **SENSE**: What patterns emerge? Demand? Localization needs?
3. **RESPOND**: Amplify what works, dampen what doesn't

**Safe-to-Fail Experiments**:
- Partner with local reseller before opening office
- Test pricing with small sample before full rollout
- Run ads to test demand before building team

**Common Mistake**: Commissioning extensive market research (treating as Complicated) when the only way to know is to try

---

## Example 3: Process Improvement

### Scenario: "We need to improve our sprint velocity"

**Domain**: Could be **Complicated** or **Complex** depending on cause

**Decomposition**:

| Sub-Problem | Domain | Response |
|-------------|--------|----------|
| Unclear requirements | Complicated | Expert analysis of requirement process |
| Technical debt | Complicated | Engineer assessment of codebase |
| Team morale | Complex | Can't analyze; need to probe and listen |
| Stakeholder interruptions | Simple | Set clear boundaries (best practice) |

**Complex Element (Morale)**:
- Can't survey your way to understanding (analysis won't work)
- Try things: different meeting formats, 20% time, retro experiments
- See what resonates and amplify

---

## Example 4: Hiring

### Scenario: "We need to hire 10 engineers in 3 months"

**Domain**: **Complicated** (mostly)

**Why**:
- Recruiting experts know the process
- Analysis of market, compensation, and pipeline helps
- Multiple good approaches exist

**Expert Analysis Needed**:
- Compensation benchmarking
- Source of candidate funnel
- Interview process optimization

**Complex Element**:
- Culture fit can't be fully analyzed
- Each hire changes team dynamics (emergent)

**Response**: Apply good practices from recruiters, but recognize that team dynamics are complex—adapt based on what emerges.

---

## Example 5: Product Pivot

### Scenario: "Our product isn't finding market fit"

**Domain**: **Complex** (primarily) with **Confused** elements

**Why Complex**:
- Market behavior can't be predicted
- Need to discover what works through experiments
- Patterns only visible in hindsight

**Breaking Down Confusion**:

| Question | Domain | How to Address |
|----------|--------|----------------|
| Is the product technically sound? | Complicated | Expert engineering review |
| Do customers want this? | Complex | Customer experiments |
| Can we build fast enough? | Complicated | Technical assessment |
| What will the market look like in 2 years? | Complex | Can't predict—safe-to-fail bets |

**Safe-to-Fail Probes**:
- Test 3 different value propositions with ads
- Build MVPs for 2 different customer segments
- Interview customers who said no

**Amplify/Dampen**: Weekly review of experiment results; double down on what shows traction, kill what doesn't

---

## Example 6: Team Conflict

### Scenario: "Two senior engineers are constantly fighting"

**Domain**: **Complex**

**Why**:
- Human dynamics are emergent
- Can't analyze your way to resolution
- Patterns only visible in hindsight
- Interventions have unpredictable effects

**Wrong Approach (Treating as Complicated)**:
- HR policy enforcement
- "Let me analyze who's right"
- Structured mediation (too early)

**Complex Approach**:
1. **PROBE**: Have informal 1:1s with each (not to solve, to sense)
2. **SENSE**: What's the real issue? Often not what's stated
3. **RESPOND**: Try small interventions (different project assignments, structured collaboration on something small)
4. **Iterate**: See what helps, what makes it worse

**Safe-to-Fail**: If intervention makes conflict worse, that's information. Dampen and try something else.

---

## Example 7: Crisis Response

### Scenario: "Our database is corrupted and losing data right now"

**Domain**: **Chaotic**

**Why**:
- High urgency
- No time for analysis
- Need to stabilize before understanding

**Response**:
1. **ACT** (immediately):
   - Stop writes to prevent more damage
   - Switch to read replica
   - Page everyone who can help
2. **SENSE**:
   - What data is affected?
   - When did this start?
   - What changed?
3. **RESPOND**:
   - Move to Complicated (diagnosis)
   - Post-mortem later

**Common Mistakes**:
- Calling a meeting to discuss (delays action)
- Trying to diagnose before stabilizing
- Waiting for the "right" person

---

## Domain Transitions Summary

| Transition | Example |
|------------|---------|
| Chaotic → Complex | Stabilize crisis, then experiment with recovery |
| Complex → Complicated | Pattern emerges, now experts can optimize |
| Complicated → Simple | Create checklist from expert knowledge |
| Simple → Chaotic | Complacency leads to sudden disruption |
| Confused → Specific | Break down problem, categorize parts |
