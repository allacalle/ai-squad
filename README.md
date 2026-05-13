# AI-SQUAD

> **Drop this folder into any project. Get a 19-agent AI team. Build software 3x faster.**
> 
> *v6.3: Integration Edition — Integrator agent, loop-closer, corrected phase order, Designer→A11y→Devs workflow*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-6.3-blue.svg)](CHANGELOG.md)

---

## What is this?

A complete **AI-powered software development framework** that turns a single AI assistant into a coordinated team of specialized agents working in parallel.

**Before**: One AI doing everything sequentially. Slow. Confused.
**After**: 19 specialized agents (9 development + 5 marketing + 5 on-demand) working in proven sequence: Designer → A11y → Devs → Integrator → Reality Checker.

```
┌─────────────────────────────────────────────────────────────┐
│                     CEO (AI Assistant)                      │
│                                                             │
│  ┌─────────────────┐    ┌─────────────────────────────┐    │
│  │  DEV TEAM (9)   │    │   MARKETING TEAM (5)       │    │
│  │  (Builds it)    │    │   (Sells it)               │    │
│  │                 │    │                             │    │
│  │ • RESEARCHER    │    │ • Content Strategist        │    │
│  │ • SPECIFIER     │    │ • Copywriter                │    │
│  │ • DESIGNER      │    │ • Newsletter Writer         │    │
│  │ • A11Y AUDITOR  │    │ • Analytics Reporter        │    │
│  │ • FRONTEND      │    │ • Hook Generator            │    │
│  │ • BACKEND       │    └─────────────────────────────┘    │
│  │ • QA            │                                       │
│  │ • INTEGRATOR    │ ⭐ NEW v6.3                            │
│  │ • REALITY CHECK │                                       │
│  └─────────────────┘                                       │
│                                                             │
│  Plus: Tech Lead, PM, DevOps, Security, AI/Data, SRE       │
└─────────────────────────────────────────────────────────────┘
```

---

## Quick Start

### 1. Clone or Download

```bash
git clone https://github.com/YOUR_USERNAME/empresa-ia-framework.git
```

### 2. Copy to Your Project

```bash
# Copy the entire framework into your project root
cp -r empresa-ia-framework/.empresa ./
cp empresa-ia-framework/*.md ./
cp -r empresa-ia-framework/templates ./
```

### 3. Start Building

Open your AI assistant (Claude, Cursor, OpenCode, etc.) and tell it:

> "Read PROMPT-INICIAL.md and start acting as CEO."

That's it. The AI now has a 17-agent team.

---

## Features

| Feature | What it does |
|---------|-------------|
| **Integrator Agent ⭐ NEW** | Cross-agent contract verification, loop-closer, integration tests — prevents the #1 failure mode |
| **Corrected Phase Order** | Designer → A11y → Devs → Integrator → Verify — proven by 5 experiments |
| **Loop-Closer Protocol** | Every bug tracked from detection → assignment → fix → verification. No gaps stay open. |
| **Functional Agent Personalities** | Each agent has a voice that drives behavior (e.g., QA is evidence-only, Backend is security-paranoid) |
| **Reality Checker** | Visual evidence specialist — defaults to "NEEDS WORK", requires screenshots for approval, can BLOCK |
| **Accessibility Auditor** | WCAG 2.2 AA specialist — runs BEFORE devs start (after Designer) |
| **Whimsy Injector** | Strategic delight design — micro-interactions, Easter eggs, personality without breaking functionality |
| **Discovery Form** | Structured 6-field brief (Surface, Audience, Tone, Brand, Scale, Constraints) |
| **Researcher Agent** | Investigates tech, competitors, users BEFORE specs are written |
| **Spec-Driven Development** | Specifier writes contracts BEFORE code. No specs = no coding. |
| **8-Phase Discipline** | Discovery → Research → Spec → Design → A11y → Build → Integrate → Verify → Document |
| **Zero Trust Doctrine** | QA blocks sprints if integration tests fail. Integrator blocks if contracts mismatch. CEO verifies every "Done". |
| **Anti-Slop 5-Dimension Audit** | QA scores Philosophy, Architecture, Detail, Function, UX. |
| **Integration Contracts ⭐ NEW** | Structured 5-dimension cross-agent verification protocol |
| **72 Design Systems** | Pre-built tokens: Linear, Stripe, Vercel, Apple, Notion... |
| **Direction Picker** | 5 curated visual styles with deterministic palettes + fonts |
| **Slash Commands** | `/spec`, `/sprint-start`, `/build`, `/integrate-check`, `/review`, `/integrate`, `/done` |
| **Placebo Coding Detection** | QA + Integrator grep for actual usage — empty structures get blocked |
| **DESIGN.md** | Google Labs standard for visual identity with WCAG validation |
| **Marketing Team** | Content strategy, posts, newsletters, analytics — post-launch |
| **Zero Conflicts** | Each agent has assigned files. They never touch each other's code. |
| **HITL Stop-Points** | 6 mandatory checkpoints where AI asks you before proceeding |
| **19+ Roles** | From coding to marketing, all pre-configured |

---

## How it Works

```
1. You give an idea to the AI (CEO)
        ↓
2. CEO fills Discovery Form (6 fields — 2 minutes)
        ↓
3. RESEARCHER investigates tech, competitors, user context
        ↓
4. SPECIFIER writes contracts (informed by research)
        ↓
5. DESIGNER creates DESIGN.md (Direction Picker + Design Systems)
        ↓
6. ACCESSIBILITY-AUDITOR audits for WCAG 2.2 AA (before devs start!)
        ↓
7. CEO launches 3 parallel agents (Design + A11y already done):
   • FRONTEND → Builds UI components
   • BACKEND → Creates APIs and logic
   • QA → Writes tests
        ↓
8. INTEGRATOR verifies cross-agent contracts ⭐ NEW
   • API shapes match? Data types match? Routes registered?
   • Integration tests pass? GAP items resolved?
        ↓
9. REALITY-CHECKER validates visual evidence + production readiness
        ↓
10. CEO verifies integration (npm test, npm run build, manual)
        ↓
11. CEO presents results to you (Stop-Point)
        ↓
12. Software done → Marketing team activates
   • Content Strategist → 32+ content ideas
   • Copywriter → Posts, hooks, threads
   • Newsletter Writer → Email campaigns
```

---

## File Structure

```
your-project/
├── .empresa/
│   ├── config/
│   │   ├── opencode.json          # 17 roles + MCPs configuration
│   │   └── design-systems.md      # 72 pre-built design systems
│   ├── content/
│   │   ├── about-brand.md         # Brand identity (marketing)
│   │   └── brand-voice.md         # Voice profile (marketing)
│   ├── docs/
│   │   ├── BACKLOG.md             # Task list
│   │   ├── ACTIVE.md              # Who's doing what
│   │   ├── DONE.md                # Completed tasks
│   │   ├── STATE.md               # Project overview
│   │   ├── GAP_APPROVAL.md        # Missing skills
│   │   ├── discovery/             # Discovery forms (v6.1.1+)
│   │   ├── research/              # Research reports (v6.1.1+)
│   │   ├── specs/                 # Integration contracts (v6.1+)
│   │   ├── reality-checks/        # Visual evidence reports (v6.2+)
│   │   └── a11y-audits/           # Accessibility audits (v6.2+)
│   ├── prompts/
│   │   ├── researcher-agent.md    # Tech & market research
│   │   ├── specifier-agent.md     # Contracts & specs
│   │   ├── designer-agent.md      # Uses DESIGN.md standard + Direction Picker
│   │   ├── frontend-agent.md      # UI components (evidence-driven)
│   │   ├── backend-agent.md       # APIs and logic (security-first)
│   │   ├── qa-agent.md            # Testing + Anti-Slop audit + Loop-Closer
│   │   ├── integrator-agent.md    # Cross-agent contract verification ⭐ v6.3
│   │   ├── reality-checker.md     # Visual evidence + gatekeeping
│   │   └── accessibility-auditor.md # WCAG specialist (runs before devs)
│   └── skills/                    # 22 specialized skills
│       ├── integration-contracts.md # Cross-agent verification protocol ⭐ v6.3
│       ├── whimsy-injector.md     # Strategic delight design
│       ├── discovery-form.md      # 6-field structured brief
│       ├── anti-slop-checklist.md # 5-dimension QA audit
│       ├── superpowers-discipline.md  # 8-phase enforcement (corrected order)
│       ├── direction-picker.md    # 5 visual directions
│       ├── brand-voice-builder.md
│       ├── content-matrix.md
│       ├── post-writer.md
│       ├── hook-generator.md
│       ├── thread-writer.md
│       ├── newsletter-writer.md
│       └── [engineering skills...]
├── docs/
│   ├── discovery/                 # Discovery forms (v6.1.1+)
│   ├── research/                  # Research reports (v6.1.1+)
│   ├── specs/                     # Spec documents (v6.1+)
│   ├── reality-checks/            # Visual evidence (v6.2+)
│   └── a11y-audits/               # Accessibility audits (v6.2+)
├── templates/
│   └── DESIGN.md                  # Visual identity template
├── DESIGN.md                      # Your project's design system
├── PROMPT-INICIAL.md              # The AI's brain (CEO instructions)
├── INIT.md                        # Quick start guide
├── README.md                      # This file
└── CHANGELOG.md                   # Version history
```

---

## Agent Roles

### Development Team (Proven Sequence)
| Agent | Specialty | Files | Phase |
|-------|-----------|-------|-------|
| **RESEARCHER** | Tech & Market Research | `docs/research/*.md` | 0.5 (sequential) |
| **SPECIFIER** | Contracts & Specs | `docs/specs/*.md` | 1 (sequential) |
| **DESIGNER** | Visual identity, UX | DESIGN.md, UX_FLOW.md | 3 (sequential FIRST) |
| **ACCESSIBILITY-AUDITOR** | WCAG 2.2 AA compliance | `docs/a11y-audits/*.md` | 3.5 (sequential SECOND) |
| **FRONTEND** | UI, Components | components/, hooks/ | 4 (parallel) |
| **BACKEND** | APIs, Logic | routes/, services/ | 4 (parallel) |
| **QA** | Testing, Quality, Loop-Closer | tests/, *.test.* | 4 (parallel) |
| **INTEGRATOR** ⭐ | Cross-agent contracts, Integration tests | `docs/integration/*.md` | 5 (sequential) |
| **REALITY-CHECKER** | Visual evidence, Production readiness | `docs/reality-checks/*.md` | 6 (sequential) |

### Marketing Team (Post-Launch)
| Agent | Mission | Tools |
|-------|---------|-------|
| **Content Strategist** | Content plan | Content Matrix (32+ ideas) |
| **Copywriter** | Viral posts | Post Writer, Hooks, Threads |
| **Newsletter Writer** | Email marketing | Newsletter Writer |
| **Analytics Reporter** | Metrics | Analytics Dashboard |

### On-Demand Specialists
Tech Lead, Project Manager, DevOps, Security, AI/Data Engineer, SRE, Documentador

---

## Powered By

AI-SQUAD stands on the shoulders of giants. These open-source creators built the tools, standards, and workflows that make this framework possible:

- **[DESIGN.md](https://github.com/google-labs-code/design.md)** — Google Labs visual identity standard (our Designer agent follows this spec)
- **[Social Media Skills](https://github.com/charlie947/social-media-skills)** — Charlie Hills' marketing system (Content Strategist, Copywriter, Newsletter skills)
- **[Matt Pocock Skills](https://github.com/total-typescript)** — Engineering best practices and TypeScript expertise
- **[Agent Orchestration Kit](https://github.com/jcarlosrodicio/opencode-agent-orchestration-kit)** — jcarlosrodicio's OpenCode agent orchestration flows & Spec-Driven development (inspired our Zero Trust & Contract Verification)
- **[Open Design](https://github.com/nexu-io/open-design)** — Nexu's open-source alternative to Claude Design. 72 design systems, 31 skills, sandboxed preview. Our Designer agent uses their DESIGN.md standard.
- **[Awesome Design MD](https://github.com/VoltAgent/awesome-design-md)** — VoltAgent's collection of 72 product design systems (Linear, Stripe, Vercel, Apple, Notion...) that power visual consistency
- **[Huashu Design](https://github.com/alchaincyf/huashu-design)** — alchaincyf's design philosophy compass: 5-step brand protocol, anti-AI-slop checklist, 5-dimensional self-critique
- **[Guizang PPT Skill](https://github.com/op7418/guizang-ppt-skill)** — op7418's magazine-style deck generator (WebGL heroes, P0/P1/P2 checklists)
- **[Open CodeSign](https://github.com/OpenCoworkAI/open-codesign)** — OpenCoworkAI's streaming artifact loop & sandboxed iframe preview pattern
- **[Multica](https://github.com/multica-ai/multica)** — multica-ai's daemon-and-runtime architecture for multi-agent CLI orchestration
- **[Superpowers](https://github.com/obra/superpowers.git)** — obra's workflow discipline plugin that enforces step-by-step agent execution
- **[Agency Agents](https://github.com/msitarzewski/agency-agents)** — msitarzewski's 89.8k⭐ collection of 150+ specialized AI agents with personality-driven behavior, Reality Checker, Accessibility Auditor, Whimsy Injector, and multi-tool integration scripts

---

## Stats

| Metric | Value |
|--------|-------|
| Size | ~250 KB (pure text) |
| Setup time | < 2 minutes |
| Throughput | ~3x faster than single AI |
| Code conflicts | 0 (strict file separation) |
| Agents | 23 (9 dev + 5 marketing + 9 on-demand) |
| Skills | 22 pre-built |
| Design Systems | 72 (Linear, Stripe, Vercel, Apple...) |
| Visual Directions | 5 (Editorial, Minimal, Warm, Tech, Brutalist) |
| Integration Dimensions | 5 (API, Data, Router, Import, E2E) ⭐ v6.3 |

---

## License

MIT — Use it however you want. Attribution appreciated.

---

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for full history.

**v6.3** — Integration Edition: Integrator agent, loop-closer, corrected phase order (Designer→A11y→Devs), integration contracts, gatekeeping authority
**v6.2** — Personality & Evidence: Functional agent personalities, Reality Checker, Accessibility Auditor, Whimsy Injector
**v6.1.1** — Research & Discovery: Researcher agent, structured Discovery Form, informed specs
**v6.1** — Spec-Driven: Specifier agent, 6-phase discipline, Anti-Slop audit, 72 design systems, Direction Picker
**v6.0** — Zero Trust: QA blocks sprints, CEO verifies every "Done", Placebo Coding prevention
**v5.3** — Enterprise Edition: Marketing team + DESIGN.md integration
**v5.2** — Marketing team added
**v5.1** — Self-Improving: Evaluator-Optimizer, Stop-Points, 13 roles
**v5.0** — UX First: DESIGNER-AGENT added
**v4.0** — Enterprise Roles
