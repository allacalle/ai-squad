# AI-SQUAD v7.0 — Human-Driven Architecture

> **You are the Software Engineer. The AI is your team.**
>
> Define the architecture. Validate every option. Then let 12 agents execute.
>
> *v7.0: Human-Driven Architecture — ADRs, two worlds, the "Preguntón" Principle*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Version](https://img.shields.io/badge/version-7.0-blue.svg)](CHANGELOG.md)

---

## What is AI-SQUAD?

A complete **AI-powered software development framework** that puts **you** in control of architecture and design while specialized AI agents execute.

**The problem v6.x solved**: One AI doing everything sequentially → 20 specialized agents in parallel. 3x faster.

**The problem v6.x DIDN'T solve** (fixed in v7.0):

| Before (v6.3) | After (v7.0) |
|---------------|--------------|
| AI-CEO made architectural decisions → 8 critical bugs in 4 experiments | **YOU make every architectural decision** via ADRs |
| Designer chose visual direction alone → you saw it at HITL #2 | **Designer proposes 2-3 directions**, you pick one |
| Backend chose DB schema while coding → migrations forgotten, CSRF broken | **Architecture locked BEFORE coding** — agents only execute |
| You felt outside the cycle | **You are the Software Engineer. You own the project.** |
| Tasks were vague → agents improvised | **Cuadriculated tasks** — exact file, contract, tests, forbidden decisions |

---

## The Two Worlds

### 🌍 MUNDO 1: DEFINITION (You drive, agents propose)

No code. Only decisions. You speak in natural language. Agents propose options with pros/cons. YOU choose.

```
FASE 0:  VISION       → You write 1 paragraph (what, for whom, why)
FASE 0.5: RESEARCH    → Agent researches 2-3 viable approaches with evidence
FASE 0.7: ARCHITECTURE → Agent proposes ADRs, YOU choose each one
FASE 1:  UX           → Agent proposes flows/responsive, YOU decide
FASE 1.5: DESIGN      → Designer proposes 2-3 palettes, YOU pick one
FASE 2:  SPEC TOTAL   → Specifier writes contracts against YOUR decisions
FASE 3:  PLAN TOTAL   → PM writes cuadriculated tasks (locked)
```

### 🌍 MUNDO 2: EXECUTION (Agents only, zero decisions)

No decisions. Only execution. Agents build exactly what was specified.

```
FASE 4:  BUILD        → FE + BE + QA execute locked tasks
FASE 5:  INTEGRATE    → Integrator verifies code matches ADRs
FASE 6:  VERIFY       → QA + Reality Checker validate
FASE 7:  CIERRE       → Documentation + retro
```

---

## The "Preguntón" Principle

Every AI agent **must** present options before deciding anything. Nothing is assumed.

| Old way (v6.3) | New way (v7.0) |
|----------------|----------------|
| "We'll use SQLite" | "Option A: SQLite (zero config, perfect for MVP). Option B: PostgreSQL (production-ready). Owner decides." |
| "Making it responsive" | "UX options: A) Mobile-first B) Desktop-only C) Adaptive. Owner decides based on audience." |
| "Using blue palette" | "Direction A: Stripe-inspired (#635BFF). Direction B: Warm Soft (#D4A574). Owner picks the vibe." |

Your time investment: **10-30 minutes reading options and deciding**. Then agents execute everything.

---

## Architecture Decision Records (ADRs)

Every architectural decision is recorded in `docs/architecture/ADR-NNN-title.md`:

```markdown
# ADR-001: Database Engine

## Context
Need persistence for users, notes, sessions. < 100 concurrent users.

## Options
1. **SQLite** — Zero config, no server, embedded. Pros: simple. Cons: no concurrency.
2. **PostgreSQL** — Robust, concurrent. Pros: production-ready. Cons: needs server.
3. **MySQL** — Broad ecosystem. Pros: well-known. Cons: less features than PG.

## Recommendation
SQLite for MVP (migration to PG is trivial with interface abstraction).

## Decision (Owner)
"SQLite is fine. If we scale we migrate."
```

---

## Cuadriculated Tasks

Before agents code, every task is fully specified:

```markdown
### B-001: Create User model
- **File**: internal/models/user.go
- **Contract**: User struct with ID, Email, PasswordHash, CreatedAt
- **Methods**: Create(), FindByEmail(), ValidatePassword()
- **Tests**: 3 cases (create, duplicate email, password validation)
- **ADRs**: ADR-002 (SQLite), ADR-003 (bcrypt)
- **Forbidden**: NO adding fields, NO changing types, NO ORM
```

An agent that receives this task has **nothing to decide** — just execute.

---

## The 12 Agents

### Definition Team (propose options — you decide)

| Agent | Phase | Role |
|-------|-------|------|
| **Researcher** | 0.5 | Investigates options with evidence and sources |
| **Architect** 🆕 | 0.7 | Proposes ADRs with 2-3 alternatives |
| **UX Architect** 🆕 | 1 | Proposes flows, responsive, brand direction |
| **Designer** | 1.5 | Proposes 2-3 visual directions, you pick |
| **Accessibility Auditor** | 1.5 | WCAG 2.2 AA audit on chosen design |
| **Specifier** | 2 | Writes contracts locked against ADRs |

### Execution Team (pure execution — zero decisions)

| Agent | Phase | Role |
|-------|-------|------|
| **Frontend** | 4 | Builds UI from locked specs + DESIGN.md |
| **Backend** | 4 | Builds APIs from locked specs + ADRs |
| **QA** | 4 | Tests against specs + verifies ADR compliance |
| **Integrator** | 5 | Verifies code matches locked ADRs |
| **Reality Checker** | 6 | Visual evidence, production readiness |

### Marketing Team (post-launch)

| Agent | Role |
|-------|------|
| **Content Strategist** | Content plan |
| **Copywriter** | Posts, hooks, threads |
| **Newsletter Writer** | Email campaigns |
| **Analytics Reporter** | Metrics |

---

## File Structure

```
your-project/
├── .ai-squad/                    ← v7.0 renamed from .empresa/
│   ├── agents/                   ← 12 agent prompts
│   │   ├── architect.md          ← NEW
│   │   ├── ux-architect.md       ← NEW
│   │   ├── researcher.md         ← MODIFIED (options-based)
│   │   ├── designer.md           ← MODIFIED (proposes 2-3)
│   │   ├── specifier.md          ← MODIFIED (ADR-locked)
│   │   ├── backend.md            ← MODIFIED (pure execution)
│   │   ├── frontend.md           ← MODIFIED (pure execution)
│   │   ├── qa.md                 ← MODIFIED (ADR compliance)
│   │   ├── integrator.md         ← MODIFIED (ADR verification)
│   │   ├── accessibility-auditor.md
│   │   ├── reality-checker.md
│   │   └── docs-agent.md
│   ├── config/
│   │   ├── agents.json          # Model assignments
│   │   └── design-systems.md    # 72 pre-built systems
│   ├── content/
│   │   ├── about-brand.md
│   │   └── brand-voice.md
│   ├── docs/
│   │   ├── STATE.md
│   │   ├── ACTIVE.md
│   │   ├── DONE.md
│   │   ├── BACKLOG.md
│   │   └── GAP_APPROVAL.md
│   ├── skills/                   # 22 specialized skills
│   ├── templates/                # NEW
│   │   ├── ADR.md
│   │   ├── VISION.md
│   │   ├── UX_DIRECTION.md
│   │   └── TASK.md
│   └── CONFIG.md
├── docs/
│   ├── vision/
│   ├── architecture/             ← ADRs live here
│   ├── ux/
│   ├── specs/
│   └── research/
├── DESIGN.md
├── CHANGELOG.md
├── INIT.md
├── PROMPT-INICIAL.md
└── README.md
```

---

## Quick Start

```bash
# 1. Clone or download
git clone https://github.com/allacalle/ai-squad.git

# 2. Copy to your project
cp -r ai-squad/.ai-squad/ ./ && cp ai-squad/*.md ./

# 3. Write your vision
echo "# My Project" > docs/VISION.md

# 4. Launch
# Open your AI and say:
# "Read PROMPT-INICIAL.md and start the Definition phase."
```

---

## Versions

v7.0 is a major evolution. The old v6.3 workflow (`.empresa/`, AI-CEO driven) is preserved in the `master` branch and in all experiments B0-B3. If you prefer the old model, use the `master` branch.

| Version | Branch | Paradigm |
|---------|--------|----------|
| **v7.0** 🆕 | `v7.0` | Human-Driven Architecture (you decide, agents execute) |
| v6.3 | `master` | AI-CEO orchestrated (agents decide, you review) |

---

## Powered By

AI-SQUAD stands on the shoulders of giants:

- **[DESIGN.md](https://github.com/google-labs-code/design.md)** — Google Labs visual identity standard
- **[Social Media Skills](https://github.com/charlie947/social-media-skills)** — Charlie Hills' marketing system
- **[Agent Orchestration Kit](https://github.com/jcarlosrodicio/opencode-agent-orchestration-kit)** — jcarlosrodicio's OpenCode flows
- **[Open Design](https://github.com/nexu-io/open-design)** — Nexu's design systems
- **[Agency Agents](https://github.com/msitarzewski/agency-agents)** — msitarzewski's 89.8k⭐ agent collection
- **[Superpowers](https://github.com/obra/superpowers.git)** — obra's workflow discipline
- **[Awesome Design MD](https://github.com/VoltAgent/awesome-design-md)** — VoltAgent's 72 design systems
- **[Huashu Design](https://github.com/alchaincyf/huashu-design)** — alchaincyf's design philosophy

---

## License

MIT — Use it however you want. Attribution appreciated.
