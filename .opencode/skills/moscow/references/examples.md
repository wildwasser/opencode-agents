# MoSCoW Examples

## Example 1: MVP Feature Prioritization

**Context**: SaaS task management app, 3-month runway to launch

### Must Have (Critical)
- [ ] User authentication (login/logout) — Can't have user data without it
- [ ] Create/edit/delete tasks — Core functionality; the product IS this
- [ ] Mobile-responsive web app — 60% of target users are mobile
- [ ] Data persistence — Obviously; tasks must survive refresh

### Should Have (Important)
- [ ] Due dates with reminders — High-value feature; competitors have it
- [ ] Task lists/folders — Needed for organization at scale
- [ ] Search — Becomes critical as task count grows
- [ ] Email notifications — Important for engagement but not day-1 critical

### Could Have (Nice to Have)
- [ ] Dark mode — User requests, but won't block adoption
- [ ] Recurring tasks — Power user feature; can add later
- [ ] Keyboard shortcuts — Nice for power users
- [ ] Task templates — Convenience feature

### Won't Have (Not This Time)
- [ ] Native mobile apps — Web-responsive is sufficient for MVP
- [ ] Team collaboration — V1 is single-player; teams are V2
- [ ] Integrations (Slack, Calendar) — After product-market fit
- [ ] Offline mode — Complex; save for later

**Effort Distribution**

| Category | Items | Est. Effort % |
|----------|-------|---------------|
| Must | 4 | 50% |
| Should | 4 | 30% |
| Could | 4 | 15% |
| Won't | 4 | 0% |

**Rationale**: Team collaboration is the hardest "Won't" because the market is team-focused, but single-player allows faster iteration to find PMF.

---

## Example 2: Weekend Planning

**Context**: One weekend (2 days), need rest but also productive

### Must Have (Critical)
- [ ] Grocery shopping — No food in house; literally must eat
- [ ] Laundry — Out of clean clothes for work
- [ ] 8+ hours sleep both nights — Exhausted; health non-negotiable

### Should Have (Important)
- [ ] Clean kitchen — Getting bad; affects daily function
- [ ] Call mom — Her birthday was last week; overdue
- [ ] 1 hour exercise — Skipped all week; important for mental health

### Could Have (Nice to Have)
- [ ] Organize garage — Would be nice; not urgent
- [ ] Read book — Want to finish it
- [ ] Watch new show — Relaxation

### Won't Have (Not This Time)
- [ ] Fix bike — Need parts; will do next weekend
- [ ] Reorganize closet — Not urgent; months of delay is fine
- [ ] Meal prep for whole week — Too ambitious; maybe 2 days of prep

**Effort Distribution**

| Category | Items | Est. Effort |
|----------|-------|-------------|
| Must | 3 | ~4 hours |
| Should | 3 | ~3 hours |
| Could | 3 | ~2 hours |
| Won't | 3 | 0 |

**Rationale**: "Garage" feels urgent but has no deadline. "Call mom" has social consequence if delayed further.

---

## Example 3: New Hire Requirements

**Context**: Hiring a senior frontend engineer, budget is competitive

### Must Have (Critical)
- [ ] 5+ years professional frontend experience — Too senior a role for less
- [ ] Proficiency in React — Our entire stack is React
- [ ] Can pass technical interview — Non-negotiable quality bar
- [ ] Communication skills — Remote team; async communication is essential
- [ ] Authorized to work (no sponsorship) — Can't sponsor currently

### Should Have (Important)
- [ ] TypeScript experience — We use TS but could learn
- [ ] Experience with testing (Jest, Cypress) — Improves team culture
- [ ] Previous remote work — Less ramp-up time
- [ ] Design system experience — Building one; helpful background

### Could Have (Nice to Have)
- [ ] NextJS experience — We use it but React skill transfers
- [ ] Open source contributions — Shows initiative
- [ ] Conference speaker — Good signal but not required
- [ ] Same timezone (±3 hours) — Helpful for meetings

### Won't Have (Not This Time)
- [ ] Must have FAANG experience — Doesn't predict success here
- [ ] Computer Science degree — Not requiring credentials over skills
- [ ] Mobile experience — Hiring for web only
- [ ] Management experience — Not a lead role

**Effort Distribution**

| Category | Items | Filters at... |
|----------|-------|---------------|
| Must | 5 | Resume screen |
| Should | 4 | Phone screen |
| Could | 4 | Final evaluation |
| Won't | 4 | Not evaluated |

**Rationale**: "TypeScript experience" is Should not Must because any senior React dev can learn it quickly.

---

## Example 4: Conference Talk Proposal

**Context**: 30-minute conference talk on API design, proposal due next week

### Must Have (Critical)
- [ ] Clear thesis statement — What's the ONE takeaway?
- [ ] 3 concrete examples — Abstract advice doesn't stick
- [ ] Submitted by deadline — Obviously
- [ ] Fits 30-minute slot — Timing matters

### Should Have (Important)
- [ ] Live coding demo — Audiences love it; memorable
- [ ] Actionable checklist — Something people can use Monday
- [ ] Narrative arc — Beginning/middle/end; not just bullet points
- [ ] Humor — Makes it more engaging

### Could Have (Nice to Have)
- [ ] Custom illustrations — Nice but time-consuming
- [ ] Tweet-able quotes — Good for reach
- [ ] Related blog post — Could do after if accepted

### Won't Have (Not This Time)
- [ ] Comprehensive survey — Too broad for 30 min
- [ ] Academic citations — Wrong audience
- [ ] Multiple language examples — Stick to one (JavaScript)

**Rationale**: "Live coding demo" is Should not Must because it can fail; I need backup slides if it does.

---

## MoSCoW Anti-Patterns

**Everything is a Must**
> "We need all of these features"

Then you haven't prioritized. Force the conversation: "If we could only ship 3 things, which 3?"

**No Won'ts**
> "We'll get to everything eventually"

Won't isn't forever—it's "not this iteration." Explicit Won'ts prevent scope creep.

**Stakeholder-specific Musts**
> "Sarah's team needs this"

Unless Sarah's team is the customer, their "Must" might be your "Should." Prioritize for the actual goal.

**Hidden dependencies**
> "User auth is a Must" (but forgot password reset)

Check that Musts don't have implicit dependencies lurking in Could/Won't.

**MoSCoW by committee**
> "Let's vote on each item"

Voting produces compromise, not clarity. One person decides; others input.
