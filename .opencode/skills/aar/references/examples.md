# After-Action Review Examples

## Example 1: Product Launch

**Event**: Mobile app v2.0 launch
**Date**: March 15
**Participants**: Product, Engineering, Marketing, Support

---

### 1. What Was Expected?

**Goals**
- 10,000 downloads in first week
- Average rating ≥ 4.5 stars
- Support ticket volume manageable (< 100/day)

**Plan**
- Soft launch to 10% for 3 days
- Full launch with PR push on Thursday
- Marketing campaign coordinated across channels

**Assumptions**
- v1 bugs were all fixed
- Server could handle 2x typical load
- Users would find new features intuitive

---

### 2. What Actually Happened?

**Timeline**
| Time | Event |
|------|-------|
| Mon 9am | Soft launch to 10% |
| Mon 3pm | First crash reports |
| Tue 10am | Identified memory leak |
| Wed 2pm | Patch released |
| Thu 9am | Full launch (1 day late) |
| Thu-Sun | 14,000 downloads |
| Fri | Rating dropped to 3.8, then recovered to 4.2 |

**Outcomes**
- 14,000 downloads (exceeded goal)
- 4.2 rating (below goal)
- 180 tickets on Friday (above threshold)

**Compared to Expected**
| Expected | Actual | Gap |
|----------|--------|-----|
| 10K downloads | 14K downloads | +40% |
| 4.5 rating | 4.2 rating | -0.3 |
| <100 tickets/day | 180 peak | +80% |

---

### 3. Why the Difference?

**What Went Well**
| Success | Contributing Factors |
|---------|---------------------|
| Downloads exceeded goal | Press embargo worked; coordinated launch |
| Recovered from crash quickly | Soft launch caught issue before full blast |
| Marketing was ready | Early alignment, clear timeline |

**What Didn't Go Well**
| Problem | Root Cause |
|---------|-----------|
| Memory leak in v2 | New image caching code wasn't load tested |
| Support overwhelmed | Underestimated frustration from crashes |
| Rating dip | Negative reviews came before patch |

**Assumptions Tested**
| Assumption | Validated? | Learning |
|------------|------------|----------|
| v1 bugs fixed | Yes | Regression testing worked |
| Server capacity | Yes | No issues under load |
| New features intuitive | Partial | Navigation confused some users |

---

### 4. What Do We Do Next?

**Sustain**
| Action | Owner | How to Protect It |
|--------|-------|-------------------|
| Soft launch process | Eng Lead | Add to release checklist |
| Marketing coordination | Marketing Lead | Keep weekly syncs |

**Improve**
| Action | Owner | By When |
|--------|-------|---------|
| Add memory profiling to CI | Eng Lead | April 1 |
| Create support surge playbook | Support Lead | Next launch |
| Respond to negative reviews | Product | This week |

**Stop**
| Action | Owner | Replacement |
|--------|-------|-------------|
| Launching without load testing | Eng Lead | Required CI step |

---

**Key Takeaways**
1. Soft launch saved us from a disaster—never skip it
2. Need performance testing for memory, not just load
3. Support needs advance warning to staff up

---

## Example 2: Failed Sales Deal

**Event**: Lost Enterprise deal with Acme Corp
**Date**: After 6-month sales cycle
**Participants**: Sales, Solutions, Product

---

### 1. What Was Expected?

**Goals**
- Close $500K annual contract
- Become reference customer for enterprise segment

**Plan**
- 3-month POC proving integration capability
- Executive alignment via CTO relationship
- Legal/procurement by end of Q2

**Assumptions**
- Technical POC would be the deciding factor
- CTO was the decision maker
- Price was within budget

---

### 2. What Actually Happened?

**Timeline**
| Time | Event |
|------|-------|
| Month 1-2 | Technical POC successful |
| Month 3 | Procurement requested security review |
| Month 4 | Security review revealed SSO gap |
| Month 5 | Delayed while building SSO |
| Month 6 | Learned CFO vetoed due to budget cuts |

**Outcomes**
- Lost deal
- Built SSO feature (silver lining)
- Damaged relationship (they felt strung along)

**Compared to Expected**
| Expected | Actual | Gap |
|----------|--------|-----|
| Closed by Q2 | No close | -100% |
| Tech POC decisive | Tech POC necessary but not sufficient | |
| CTO decides | CFO had veto | Wrong stakeholder map |

---

### 3. Why the Difference?

**What Went Well**
| Success | Contributing Factors |
|---------|---------------------|
| Technical POC | Engineering invested properly |
| SSO built | Necessity drove prioritization |

**What Didn't Go Well**
| Problem | Root Cause |
|---------|-----------|
| Didn't know about CFO veto | Stakeholder mapping too narrow |
| Security review surprised us | Didn't ask about procurement process early |
| 6 months wasted | No kill criteria defined |

**Surprises**
- CFO had unilateral budget veto power
- Security review added 6 weeks
- They were also evaluating a competitor we didn't know about

---

### 4. What Do We Do Next?

**Sustain**
| Action | Owner | How to Protect It |
|--------|-------|-------------------|
| Engineering POC support | Solutions | Dedicated SE allocation |

**Improve**
| Action | Owner | By When |
|--------|-------|---------|
| Map budget authority in discovery | Sales | Next deal |
| Security self-assessment for enterprise | Product | Q3 |
| Define go/no-go criteria by stage | Sales Ops | Next month |

**Stop**
| Action | Owner | Replacement |
|--------|-------|-------------|
| Assuming technical champion = buyer | Sales | Explicit economic buyer qualification |

---

**Key Takeaways**
1. Technical success is necessary but not sufficient in enterprise
2. Map the budget holder, not just the champion
3. Need earlier discovery of procurement/security requirements

---

## Example 3: Successful Presentation

**Event**: Board presentation Q1 results
**Date**: April 5
**Participants**: CEO, CFO, Board

---

### 1. What Was Expected?

**Goals**
- Secure approval for expansion plan
- Maintain board confidence
- Answer tough questions on CAC increase

**Plan**
- 15-minute presentation, 30-minute Q&A
- Lead with wins, address risks proactively
- CFO handles financial details

**Assumptions**
- Board has read materials in advance
- CAC question is the hot topic
- They'll want strategic discussion, not details

---

### 2. What Actually Happened?

**Outcomes**
- Expansion approved unanimously
- Board engaged, good energy
- CAC question handled well
- Ran 15 minutes over (board's choice)

**Compared to Expected**
| Expected | Actual | Gap |
|----------|--------|-----|
| Approval | Approved | Met |
| Tough CAC Q&A | CAC addressed smoothly | +positive |
| 45 min total | 60 min | +15 (engagement) |

---

### 3. Why the Difference?

**What Went Well**
| Success | Contributing Factors |
|---------|---------------------|
| CAC objection handled | Prepped 3 scenarios with CFO beforehand |
| Board engaged | Opened with customer story, not numbers |
| Approval achieved | Pre-wired with key board member |

**Assumptions Tested**
| Assumption | Validated? | Learning |
|------------|------------|----------|
| Board read materials | Partial | 2 of 5 hadn't—need exec summary |
| CAC is hot topic | Yes | As expected |
| Want strategic discussion | Yes | Details in appendix was right call |

---

### 4. What Do We Do Next?

**Sustain**
| Action | Owner | How to Protect It |
|--------|-------|-------------------|
| Pre-meeting with key board member | CEO | Calendar recurring |
| CFO prep on tough questions | CFO | 1 week before meetings |
| Lead with story, not data | CEO | Presentation template |

**Improve**
| Action | Owner | By When |
|--------|-------|---------|
| Add TL;DR exec summary | Chief of Staff | Next meeting |
| Rehearsal with timer | CEO/CFO | 2 days before |

---

**Key Takeaways**
1. Pre-wiring with key stakeholders reduces risk significantly
2. Stories > data for opening (data supports)
3. Assume some people haven't read materials—design for that

---

## AAR Facilitation Tips

**Make it safe**
- "What can we learn?" not "Who messed up?"
- Leader speaks last
- Celebrate honesty, not just success

**Keep it focused**
- One event at a time
- 30-60 minutes max
- Action items, not just discussion

**Common failure modes**
- Too long after the event (memory fades)
- Too focused on blame (people shut down)
- No action items (insights lost)
- No follow-up (actions forgotten)
