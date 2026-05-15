# Changelog - AI-SQUAD Framework

## [7.0] - 15/05/2026 - Human-Driven Architecture 🏗️

### 🆕 Paradigm Shift

**From "AI-CEO executes" to "Software Engineer owns the architecture"**

v7.0 is a fundamental redesign of how the framework works. After 8 experiments (B0-B3), we identified the root cause of all critical bugs: **agents made architectural decisions without human approval**. v7.0 splits development into two worlds:

### 🌍 MUNDO 1: DEFINITION (You drive, agents propose)
No code is written until all decisions are made.

| Phase | What | Who Decides |
|-------|------|-------------|
| 0 — Vision | You write a paragraph in natural language | **You** |
| 0.5 — Research | Agent researches options with evidence | Agent proposes |
| 0.7 — Architecture | Agent writes ADRs with options, you choose | **You** 🆕 |
| 1 — UX | Agent proposes flows, you decide responsive/brand | **You** 🆕 |
| 1.5 — Design | Agent proposes 2-3 palettes, you pick one | **You** |
| 2 — Spec Total | Spec writes contracts against locked ADRs | Spec locked |
| 3 — Plan Total | PM writes cuadriculated tasks | Plan locked |

### 🌍 MUNDO 2: EXECUTION (Agents only, zero decisions)
No decisions allowed. Only execution against locked specs.

| Phase | What | Who |
|-------|------|-----|
| 4 — Build | FE + BE + QA execute locked tasks | Agents |
| 5 — Integrate | Integrator verifies ADRs vs code | Agent |
| 6 — Verify | QA + Reality Checker | Agents |
| 7 — Cierre | Documentation + retro | Agent |

### 🆕 New Agent: Software Architect
- Proposes Architecture Decision Records (ADRs) with 2-3 options each
- Every option has pros, cons, costs, and evidence
- Owner chooses in natural language
- No assumption goes un-checked

### 🆕 New Agent: UX Architect
- Proposes UX flows, responsive strategies, brand/tone options
- Maps user journeys before design begins
- All decisions documented in UX_DIRECTION.md

### 🆕 New Templates
- **ADR.md**: Architecture Decision Record template (context → options → decision)
- **VISION.md**: One-paragraph vision statement in natural language
- **UX_DIRECTION.md**: UX decisions log (responsive, flows, brand, accessibility)
- **TASK.md**: Cuadriculated task template (file, contract, tests, forbidden)

### 🔄 Renamed: .empresa/ → .ai-squad/
- All internal files now under `.ai-squad/`
- `prompts/` renamed to `agents/` for clarity
- Old experiments (B0-B3) stay on v6.3 with `.empresa/`

### 🔄 Modified: All 7 Existing Agents

| Agent | Change |
|-------|--------|
| **Researcher** | Now researches OPTIONS competitively (not just "best" solution) |
| **Designer** | Now proposes 2-3 directions for Owner to choose |
| **Specifier** | Writes specs against locked ADRs. No assumptions. |
| **Backend** | Pure execution mode. Zero decisions. Stops on ambiguity. |
| **Frontend** | Pure execution mode. Zero decisions. Stops on ambiguity. |
| **QA** | Now also verifies ADR compliance. Blocks on architecture violations. |
| **Integrator** | Now verifies code matches locked ADRs, not just connections. |

### 📚 Documentation
- README.md fully rewritten for v7.0 paradigm
- PROMPT-INICIAL.md updated: 12 phases, two worlds, ADR-first
- CHANGELOG.md: v7.0 release notes
- CONFIG.md: Updated agent roster for v7.0

### 🧠 Based on 8 Experiments (B0-B3 + Exp1-4)

| Problem found in experiments | Solution in v7.0 |
|------------------------------|------------------|
| Agents make architectural decisions without you | **ADRs** — every decision proposed, you choose |
| Bugs from wrong DB schema, CSRF, migrations | **ADR-first** — architecture locked before coding |
| Designer picks direction without your taste | **2-3 proposals** — you pick the vibe |
| You feel outside the development cycle | **You are the Software Engineer** — not a reviewer |
| Tasks are vague, agents improvise | **Cuadriculated tasks** — exact file, contract, tests |

---

## [6.3] - 13/05/2026 - Integration Edition 🚀

### 🆕 Major Changes
... (see previous changelog)

## [6.2] - 10/05/2026 - Personality & Evidence Edition
...

## [6.1.1] - 30/04/2026 - Research & Discovery Edition
...

## [6.1] - 30/04/2026 - Spec-Driven Edition
...

## [6.0] - 30/04/2026 - Zero Trust Edition
...

## [5.3] - 29/04/2026 - Enterprise Edition
...

## [5.2] - 29/04/2026 - Marketing Edition
...

## [5.1] - 16/04/2026 - Self-Improving Edition
...

## [5.0] - 15/04/2026 - UX First Edition
...

## [4.0] - 14/04/2026 - Enterprise Roles
...

## [3.0] - 13/04/2026 - Multi-Agent with Interchangeable Roles
...

## [2.1] - 12/04/2026 - Multi-Agent Edition
...

## [2.0] - 06/04/2026 - Skills & Logging
...

## [1.0] - Initial
...
