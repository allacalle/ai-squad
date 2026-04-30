# Changelog - AI-SQUAD Framework

## [6.1.1] - 30/04/2026 - Research & Discovery Edition

### 🆕 Major Changes

**Discovery Form (Structured Brief)**
- Replaces free-form `/grill-me` with structured 6-field form: Surface, Audience, Tone, Brand, Scale, Constraints
- Based on Nexu's finding that 80% of redirects happen because the brief was incomplete
- Forms lock scope in 2 minutes vs 15-30 min of wandering conversation

**Researcher Agent**
- Investigates tech landscape, competitors, user context, and domain knowledge BEFORE specs are written
- Produces research reports at `docs/research/[feature].md`
- Specs are now informed by real data, not AI guesses
- Includes competitive analysis table with pros/cons/our advantage

**8-Phase Workflow (expanded)**
- Phase 0: Discovery (6-field form)
- Phase 0.5: Research (tech, competitors, users)
- Phase 1: Spec (informed contracts)
- Phase 2: Plan
- Phase 3: Build (4 agents parallel)
- Phase 4: Verify
- Phase 5: Integrate
- Phase 6: Document

### 📚 Documentation Updated
- PROMPT-INICIAL.md: Added Researcher, Discovery Form, expanded workflow
- .empresa/prompts/researcher-agent.md: New agent prompt
- .empresa/skills/discovery-form.md: 6-field structured brief
- README.md: v6.1.1 with new agent, updated workflow
- CHANGELOG.md: v6.1.1 release notes

---

## [6.1] - 30/04/2026 - Spec-Driven Edition

### 🆕 Major Changes

**Spec-Driven Development**
- New SPECIFIER-AGENT: Writes integration contracts BEFORE any code is written.
- Contracts include: API endpoints, Component props/events, Data types, Acceptance criteria.
- Agents code TO THE CONTRACT — deviations are rejected by QA.

**6-Phase Discipline (Superpowers-inspired)**
- Strict phase order: Spec → Plan → Build → Verify → Integrate → Document
- No skipping phases. CEO announces current phase at session start.
- Slash commands enforce transitions: `/spec`, `/sprint-start`, `/build`, `/review`, `/integrate`, `/done`

**Anti-Slop 5-Dimension Audit**
- QA scores every feature: Philosophy, Architecture, Detail, Function, UX (1-5 each)
- Placebo Coding detection: QA greps for actual usage of new files
- Contract verification: QA checks if implementation matches spec exactly

**Design Systems Library**
- 72 pre-built design systems: Linear, Stripe, Vercel, Apple, Notion, Anthropic...
- Each system ships exact color tokens, fonts, spacing, radius values
- Designer applies system tokens directly in DESIGN.md

**Direction Picker**
- 5 curated visual directions with deterministic palettes + fonts:
  - Editorial Monocle, Modern Minimal, Warm Soft, Tech Utility, Brutalist Experimental
- Designer selects ONE direction before creating DESIGN.md — no freestyle

### 📚 Documentation Updated
- PROMPT-INICIAL.md: Added Specifier agent, 6-phase workflow, slash commands, Anti-Slop tools
- .empresa/prompts/specifier-agent.md: New agent prompt
- .empresa/skills/anti-slop-checklist.md: 5-dimension audit + Placebo Coding detection
- .empresa/skills/superpowers-discipline.md: Phase enforcement + slash commands
- .empresa/skills/direction-picker.md: 5 visual directions with tokens
- .empresa/config/design-systems.md: 72 design systems library
- README.md: v6.1 with new agents, workflow, and tools

---

## [6.0] - 30/04/2026 - Zero Trust Edition

### 🆕 Major Changes

**Zero Trust Doctrine**
- QA Agent becomes "Nuclear QA": Blocks sprints if integration tests fail. No suggestions, only hard blocks.
- CEO verifies every "Done" report. No more trusting agent self-assessments.
- Integration tests required before any feature is marked complete.
- Contract Verification step added before agents start coding.

**Placebo Coding Prevention**
- Agents must NOT create empty structures without hooking them into the real system.
- QA specifically tests for "Placebo Coding" by triggering features through real user flows.

### 📚 Documentation Updated
- PROMPT-INICIAL.md: Added Zero Trust rules and CEO verification requirements
- .empresa/prompts/qa-agent.md: Rewritten as Nuclear QA blocker
- .empresa/prompts/frontend-agent.md: Added contract compliance and verification
- .empresa/prompts/backend-agent.md: Added contract compliance and verification

---

## [5.3] - 29/04/2026 - Enterprise Edition

### 🆕 Major Features

**Marketing Team Integrated**
- 4 new roles: Content Strategist, Copywriter, Newsletter Writer, Analytics Reporter
- 6 marketing skills: brand-voice-builder, post-writer, content-matrix, hook-generator, thread-writer, newsletter-writer
- Post-development distribution phase to promote software

**DESIGN.md Standard (Google Labs)**
- Replaces STYLE_GUIDE.md with DESIGN.md using YAML tokens
- Automatic accessibility validation (WCAG AA)
- Export to Tailwind and DTCG
- Design diff between sprints
- Designer with bash enabled for CLI execution

### 📚 Documentation Updated
- README.md: v5.3 with agents and workflow
- PROMPT-INICIAL.md: Full marketing team and complete flow
- INIT.md: Quick start guide
- All agent prompts translated to English
- All skills translated to English

---

## [5.2] - 29/04/2026 - Marketing Edition

### 🆕 Features
- Marketing team: 4 roles + 6 skills
- brand-voice-builder, post-writer, content-matrix, hook-generator, thread-writer, newsletter-writer
- Post-development distribution phase

---

## [5.1] - 16/04/2026 - Self-Improving Edition

### 🆕 Features
- Evaluator-Optimizer
- 6 HITL Stop-Points
- Phase 0: Research
- 13 roles available
- Matt Pocock Skills (grill-me, tdd, diagnose, zoom-out, caveman)

---

## [5.0] - 15/04/2026 - UX First Edition

- DESIGNER-AGENT as first agent
- STYLE_GUIDE.md and UX_FLOW.md
- UX premium focus

---

## [4.0] - 14/04/2026 - Enterprise Roles

- 9 additional roles (PM, DevOps, Security, AI, etc.)
- Global opencode.json with pre-configured roles
- MCPs integrated

---

## [3.0] - 13/04/2026 - Multi-Agent with Interchangeable Roles

### 🎉 Major Features

**Defined Agent System**
- 3 Main agents: FRONTEND, BACKEND, QA
- Specialized roles with assigned files
- Interchangeable roles (1 terminal = N roles)

**Intelligent SKILL-ASSIGNER**
- Auto-injection of clear skills
- Asks CEO if in doubt
- Detects gaps and proposes solutions

**Idle/Wake-Up System**
- Idle agents can be awakened
- Idle tasks allowed per role
- Wake agents every 5 min (configurable)

**File-Based Communication**
- BACKLOG.md, ACTIVE.md, DONE.md
- GAP_APPROVAL.md for skills
- STATE.md for general status

### 📚 Documentation

| File | Description |
|---------|-------------|
| `.empresa/roles/*.md` | Role definitions |
| `.empresa/prompts/*.md` | Prompt templates |
| `.empresa/config/*.json` | Configuration |
| `docs/*.md` | Shared documents |

### 🤖 Roles Created

- CEO.md - The human-director
- ORQUESTADOR.md - Task decomposer
- Prompts: frontend, backend, qa, docs, skill-assigner

---

## [2.1] - 12/04/2026 - Multi-Agent Edition

- Multi-agent methodology validated
- Formula: HUMAN opens + AGENT executes = SUCCESS
- ~3x throughput
- 0 conflicts

## [2.0] - 06/04/2026 - Skills & Logging

- Dynamic skill system
- Automation scripts
- Project templates

## [1.0] - Initial

- Initial concept
