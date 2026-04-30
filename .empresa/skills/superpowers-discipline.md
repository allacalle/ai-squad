# Superpowers Discipline — Phase Enforcement

## PURPOSE

Prevents the CEO and agents from skipping phases. Enforces strict step-by-step execution.

## THE PHASES

Every feature MUST go through these phases IN ORDER. Skipping is FORBIDDEN.

```
Phase 1: SPEC          → Specifier writes contracts
Phase 2: PLAN          → CEO assigns tasks to agents
Phase 3: BUILD         → Agents code in parallel
Phase 4: VERIFY        → QA runs Anti-Slop Checklist
Phase 5: INTEGRATE     → CEO verifies integration
Phase 6: DOCUMENT      → Update STATE.md, BACKLOG.md, DONE.md
```

## ENFORCEMENT RULES

### For the CEO:

- **You CANNOT assign coding tasks** before Phase 1 (Spec) is complete
- **You CANNOT approve work** before Phase 4 (Verify) passes
- **You CANNOT mark done** before Phase 5 (Integrate) succeeds
- **You CANNOT start next feature** before Phase 6 (Document) is complete

### For Agents:

- **Agents CANNOT code** until they receive a contract from Specifier
- **Agents CANNOT report done** without running `npm test && npm run build`
- **Agents CANNOT skip edge cases** — contracts define them, agents must implement them

### For QA:

- **QA CANNOT approve** if any Anti-Slop dimension scores < 3
- **QA CANNOT skip Placebo Check** — must grep for actual usage
- **QA CANNOT approve** if contracts are not fulfilled

## VIOLATION HANDLING

If anyone tries to skip a phase:

```
🚨 DISCIPLINE VIOLATION

Phase attempted: [X]
Required previous phase: [Y] — NOT COMPLETE

You must complete Phase [Y] before proceeding to Phase [X].
This is not optional. This is the discipline.
```

## SLASH COMMANDS

These commands enforce phase transitions:

| Command | Phase | What it does |
|---------|-------|-------------|
| `/spec [feature]` | Phase 1 | Launches Specifier to write contracts |
| `/sprint-start` | Phase 2 | CEO reviews specs, assigns tasks |
| `/build` | Phase 3 | CEO launches parallel agents |
| `/review` | Phase 4 | QA runs Anti-Slop Checklist |
| `/integrate` | Phase 5 | CEO verifies end-to-end integration |
| `/done` | Phase 6 | CEO updates all docs, marks complete |

## WHEN TO USE STRICT MODE

**Strict mode ON** (enforce all phases):
- New feature from scratch
- Major refactor
- After a bug caused by skipped steps

**Strict mode OFF** (allow skipping):
- Tiny typo fix
- Documentation update only
- Owner explicitly says "skip the process, just do it"

## CEO REMINDER

At the start of every session, announce:

```
📋 Current Phase: [X/6]
✅ Completed: [list of completed phases]
⏳ In Progress: [current phase]
🔒 Next: [next phase] — requires [prerequisite]
```

---

*Inspired by obra/superpowers workflow discipline plugin*
