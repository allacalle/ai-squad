# AI-SQUAD

> **Drop this folder into any project. Get a 17-agent AI team. Build software 3x faster.**
> 
> *v6.0: Now with Zero Trust Doctrine & Nuclear QA*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-6.0-blue.svg)](CHANGELOG.md)

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
| **Zero Trust Doctrine** | QA blocks sprints if integration tests fail. CEO verifies every "Done". |
| **Parallel Agents** | 4 agents coding simultaneously (Designer, Frontend, Backend, QA) |
| **DESIGN.md** | Google Labs standard for visual identity with WCAG validation |
| **Marketing Team** | Content strategy, posts, newsletters, analytics — post-launch |
| **Zero Conflicts** | Each agent has assigned files. They never touch each other's code. |
| **Evaluator-Optimizer** | QA + Tech Lead review before closing any sprint |
| **HITL Stop-Points** | 6 mandatory checkpoints where AI asks you before proceeding |
| **17 Roles** | From coding to marketing, all pre-configured |

---

## How it Works

```
1. You give an idea to the AI (CEO)
        ↓
2. CEO interviews you (/grill-me) to understand requirements
        ↓
3. CEO creates BACKLOG.md with clear tasks
        ↓
4. CEO launches 4 parallel agents:
   • DESIGNER → Creates DESIGN.md (validated tokens)
   • FRONTEND → Builds UI components
   • BACKEND → Creates APIs and logic
   • QA → Writes tests
        ↓
5. Evaluator-Optimizer reviews quality
        ↓
6. CEO presents results to you (Stop-Point)
        ↓
7. Software done → Marketing team activates
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
│   │   └── opencode.json          # 17 roles + MCPs configuration
│   ├── content/
│   │   ├── about-brand.md         # Brand identity (marketing)
│   │   └── brand-voice.md         # Voice profile (marketing)
│   ├── docs/
│   │   ├── BACKLOG.md             # Task list
│   │   ├── ACTIVE.md              # Who's doing what
│   │   ├── DONE.md                # Completed tasks
│   │   ├── STATE.md               # Project overview
│   │   └── GAP_APPROVAL.md        # Missing skills
│   ├── prompts/
│   │   ├── designer-agent.md      # Uses DESIGN.md standard
│   │   ├── frontend-agent.md      # UI components
│   │   ├── backend-agent.md       # APIs and logic
│   │   └── qa-agent.md            # Testing
│   └── skills/                    # 14 specialized skills
│       ├── brand-voice-builder.md
│       ├── content-matrix.md
│       ├── post-writer.md
│       ├── hook-generator.md
│       ├── thread-writer.md
│       ├── newsletter-writer.md
│       └── [engineering skills...]
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

### Development Team (Parallel)
| Agent | Specialty | Files |
|-------|-----------|-------|
| **DESIGNER** | Visual identity, UX | DESIGN.md, UX_FLOW.md |
| **FRONTEND** | UI, Components | components/, hooks/ |
| **BACKEND** | APIs, Logic | routes/, services/ |
| **QA** | Testing, Quality | tests/, *.test.* |

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

- **[DESIGN.md](https://github.com/google-labs-code/design.md)** — Google Labs visual identity standard
- **[Social Media Skills](https://github.com/charlie947/social-media-skills)** — Charlie Hills marketing system
- **[Matt Pocock Skills](https://github.com/total-typescript)** — Engineering best practices

---

## Stats

| Metric | Value |
|--------|-------|
| Size | ~164 KB (pure text) |
| Setup time | < 2 minutes |
| Throughput | ~3x faster than single AI |
| Code conflicts | 0 (strict file separation) |
| Agents | 17 (4 base + 4 marketing + 9 on-demand) |
| Skills | 14 pre-built |

---

## License

MIT — Use it however you want. Attribution appreciated.

---

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for full history.

**v5.3** — Enterprise Edition: Marketing team + DESIGN.md integration
**v5.2** — Marketing team added
**v5.1** — Self-Improving: Evaluator-Optimizer, Stop-Points, 13 roles
**v5.0** — UX First: DESIGNER-AGENT added
**v4.0** — Enterprise Roles
