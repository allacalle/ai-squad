# AI-SQUAD

> **Drop this folder into any project. Get a 17-agent AI team. Build software 3x faster.**
> 
> *v6.2: Personality & Evidence — Functional agent personalities, Reality Checker, Accessibility Auditor*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-6.2-blue.svg)](CHANGELOG.md)

---

## What is this?

A complete **AI-powered software development framework** that turns a single AI assistant into a coordinated team of specialized agents working in parallel.

**Before**: One AI doing everything sequentially. Slow. Confused.
**After**: 17 specialized agents (4 building + 4 testing + 4 designing + 5 marketing) working simultaneously. Fast. Focused.

```
┌─────────────────────────────────────────────────────────────┐
│                     CEO (AI Assistant)                      │
│                                                             │
│  ┌─────────────────┐    ┌─────────────────────────────┐    │
│  │  DEV TEAM       │    │   MARKETING TEAM            │    │
│  │  (Builds it)    │    │   (Sells it)                │    │
│  │                 │    │                             │    │
│  │ • DESIGNER      │    │ • Content Strategist        │    │
│  │ • FRONTEND      │    │ • Copywriter                │    │
│  │ • BACKEND       │    │ • Newsletter Writer         │    │
│  │ • QA            │    │ • Analytics Reporter        │    │
│  └─────────────────┘    └─────────────────────────────┘    │
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
| **Functional Agent Personalities** | Each agent has a voice that drives behavior (e.g., QA is evidence-only, Backend is security-paranoid) |
| **Reality Checker** | Visual evidence specialist — defaults to "NEEDS WORK", requires screenshots for approval |
| **Accessibility Auditor** | WCAG 2.2 AA specialist — screen reader testing, keyboard navigation, contrast validation |
| **Whimsy Injector** | Strategic delight design — micro-interactions, Easter eggs, personality without breaking functionality |
| **Discovery Form** | Structured 6-field brief (Surface, Audience, Tone, Brand, Scale, Constraints) |
| **Researcher Agent** | Investigates tech, competitors, users BEFORE specs are written |
| **Spec-Driven Development** | Specifier writes contracts BEFORE code. No specs = no coding. |
| **6-Phase Discipline** | Spec → Plan → Build → Verify → Integrate → Document. No skipping. |
| **Zero Trust Doctrine** | QA blocks sprints if integration tests fail. CEO verifies every "Done". |
| **Anti-Slop 5-Dimension Audit** | QA scores Philosophy, Architecture, Detail, Function, UX. |
| **Parallel Agents** | 5 agents coding simultaneously (Specifier, Designer, Frontend, Backend, QA) |
| **72 Design Systems** | Pre-built tokens: Linear, Stripe, Vercel, Apple, Notion... |
| **Direction Picker** | 5 curated visual styles with deterministic palettes + fonts |
| **Slash Commands** | `/spec`, `/sprint-start`, `/build`, `/review`, `/integrate`, `/done` |
| **Placebo Coding Detection** | QA greps for actual usage — empty structures get blocked |
| **DESIGN.md** | Google Labs standard for visual identity with WCAG validation |
| **Marketing Team** | Content strategy, posts, newsletters, analytics — post-launch |
| **Zero Conflicts** | Each agent has assigned files. They never touch each other's code. |
| **HITL Stop-Points** | 6 mandatory checkpoints where AI asks you before proceeding |
| **17+ Roles** | From coding to marketing, all pre-configured |

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
5. CEO launches 4 parallel agents:
   • DESIGNER → Creates DESIGN.md (Direction Picker + Design Systems)
   • FRONTEND → Builds UI components
   • BACKEND → Creates APIs and logic
   • QA → Writes tests
        ↓
6. QA runs Anti-Slop 5-Dimension Audit
        ↓
7. CEO verifies integration (npm test, npm run build, manual)
        ↓
8. CEO presents results to you (Stop-Point)
        ↓
9. Software done → Marketing team activates
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
│   │   ├── researcher-agent.md    # Tech & market research (v6.1.1+)
│   │   ├── specifier-agent.md     # Contracts & specs (v6.1+)
│   │   ├── designer-agent.md      # Uses DESIGN.md standard + Direction Picker
│   │   ├── frontend-agent.md      # UI components (evidence-driven)
│   │   ├── backend-agent.md       # APIs and logic (security-first)
│   │   ├── qa-agent.md            # Testing + Anti-Slop audit (gatekeeper)
│   │   ├── reality-checker.md     # Visual evidence specialist (v6.2+)
│   │   └── accessibility-auditor.md # WCAG specialist (v6.2+)
│   │   ├── designer-agent.md      # Uses DESIGN.md standard
│   │   ├── frontend-agent.md      # UI components
│   │   ├── backend-agent.md       # APIs and logic
│   │   └── qa-agent.md            # Testing + Anti-Slop audit
│   └── skills/                    # 21 specialized skills
│       ├── whimsy-injector.md     # Strategic delight design (v6.2+)
│       ├── discovery-form.md      # 6-field structured brief (v6.1.1+)
│       ├── anti-slop-checklist.md # 5-dimension QA audit (v6.1+)
│       ├── superpowers-discipline.md  # 6-phase enforcement (v6.1+)
│       ├── direction-picker.md    # 5 visual directions (v6.1+)
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

### Development Team (Sequential + Parallel)
| Agent | Specialty | Files | Phase |
|-------|-----------|-------|-------|
| **RESEARCHER** | Tech & Market Research | `docs/research/*.md` | 0.5 (sequential) |
| **SPECIFIER** | Contracts & Specs | `docs/specs/*.md` | 1 (sequential) |
| **DESIGNER** | Visual identity, UX | DESIGN.md, UX_FLOW.md | 3 (parallel) |
| **FRONTEND** | UI, Components | components/, hooks/ | 3 (parallel) |
| **BACKEND** | APIs, Logic | routes/, services/ | 3 (parallel) |
| **QA** | Testing, Quality | tests/, *.test.* | 3 (parallel) |
| **REALITY-CHECKER** | Visual evidence, production readiness | `docs/reality-checks/*.md` | 4 (sequential) |
| **ACCESSIBILITY-AUDITOR** | WCAG 2.2 AA compliance | `docs/a11y-audits/*.md` | 4 (parallel with Reality) |

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
| Size | ~200 KB (pure text) |
| Setup time | < 2 minutes |
| Throughput | ~3x faster than single AI |
| Code conflicts | 0 (strict file separation) |
| Agents | 21 (8 base + 4 marketing + 9 on-demand) |
| Skills | 21 pre-built |
| Design Systems | 72 (Linear, Stripe, Vercel, Apple...) |
| Visual Directions | 5 (Editorial, Minimal, Warm, Tech, Brutalist) |

---

## License

MIT — Use it however you want. Attribution appreciated.

---

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for full history.

**v6.2** — Personality & Evidence: Functional agent personalities, Reality Checker, Accessibility Auditor, Whimsy Injector
**v6.1.1** — Research & Discovery: Researcher agent, structured Discovery Form, informed specs
**v6.1** — Spec-Driven: Specifier agent, 6-phase discipline, Anti-Slop audit, 72 design systems, Direction Picker
**v6.0** — Zero Trust: QA blocks sprints, CEO verifies every "Done", Placebo Coding prevention
**v5.3** — Enterprise Edition: Marketing team + DESIGN.md integration
**v5.2** — Marketing team added
**v5.1** — Self-Improving: Evaluator-Optimizer, Stop-Points, 13 roles
**v5.0** — UX First: DESIGNER-AGENT added
**v4.0** — Enterprise Roles
