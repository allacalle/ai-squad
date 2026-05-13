# Changelog - AI-SQUAD Framework

## [6.3] - 13/05/2026 - Integration Edition 🚀

### 🆕 Major Changes

**Model Assignment Protocol**
- Complete model mapping for all 9 agents in `agents.json`
- **Kimi K2.6** → Specifier (único agente que justifica su coste)
- **MiniMax M2.7** → Frontend + Backend (calidad de código a coste óptimo)
- **DeepSeek V4 Flash** → QA (el más rápido y barato para tests masivos)
- **GLM-5.1** → Designer (tokens visuales)
- **Qwen3.5 Plus** → Researcher, A11y, Integrator, Reality Checker (sin código productivo)
- Every agent has backup model assigned
- Model switching protocol documented in PROMPT-INICIAL.md
- CEO checklist: verify model BEFORE launching each agent
- Cost optimization: $/token distribution documented per agent

**Integrator Agent — The Missing Piece**
- New INTEGRATOR-AGENT: Verifies cross-agent contracts before any feature is "Done"
- 5-dimension cross-agent contract audit: API shapes, Data shapes, Router wiring, Import chains, E2E flow
- Runs AFTER build, BEFORE verification — catches the #1 failure mode from experiments
- Blocks sprints on contract mismatch with exact diff evidence
- Maintains `docs/integration/*.md` audit reports

**Loop-Closer Protocol**
- QA-AGENT upgraded to track bugs from detection → assignment → fix → verification
- Every GAP_APPROVAL item must be resolved before feature completion
- No bug stays open without action — closes the cycle that experiments proved was broken

**Corrected Phase Order (Designer → A11y → Devs → Integrator)**
- **Phase 3**: DESIGNER goes FIRST (sequential) — visual identity before code
- **Phase 3.5**: ACCESSIBILITY-AUDITOR goes SECOND (sequential) — WCAG audit before devs
- **Phase 4**: BUILD (Frontend + Backend + QA parallel) — devs start after A11y approval
- **Phase 5**: INTEGRATE (Integrator sequential) — verifies connections
- **Phase 6**: VERIFY (Reality Checker) — visual evidence + production readiness
- **Phase 7**: CEO INTEGRATE — manual end-to-end verification
- **Phase 8**: DOCUMENT — update state docs
- This order was proven by Exp5 (137/137 tests, WCAG AA) vs Exp1-4 failures

**Integration Contracts Skill**
- New structured protocol for verifying cross-agent interfaces
- 5 integration dimensions with automated verification commands
- Integrates with Placebo Coding detection
- Connects to Loop-Closer for bug tracking

**Reality Checker Gatekeeping Authority (strengthened)**
- Can now BLOCK production, not just advise
- Complements Integrator: Integrator checks connections, Reality Checker checks usability
- "NO" is binding — CEO can override but must document why

**Experimental Learnings Doctrine**
- New section in PROMPT-INICIAL.md codifying lessons from 5 experiments
- Integration First, Designer First, Loop Closer, Less Docs/More Validation, The "No" Doctrine
- Each doctrine backed by specific experiment results

### 🧠 Based on Experimental Findings

These changes directly address the 3 root problems identified in Exp1-5:

| Problem | Solution |
|---------|----------|
| Integration is the bottleneck | **Integrator Agent** verifies all cross-agent connections |
| The cycle doesn't close | **Loop-Closer Protocol** tracks bugs to resolution |
| Wrong build order | **Corrected phases**: Designer → A11y → Devs → Integrator |

### 📚 Documentation Updated
- PROMPT-INICIAL.md: 9 agents, corrected phases, experimental learnings doctrine
- .empresa/prompts/integrator-agent.md: New agent — cross-agent contract enforcer
- .empresa/skills/integration-contracts.md: New skill — structured verification protocol
- .empresa/prompts/qa-agent.md: Added loop-closer responsibility
- .empresa/prompts/reality-checker.md: Strengthened gatekeeping authority
- .empresa/skills/superpowers-discipline.md: 8-phase corrected order with experimental rationale
- .empresa/docs/BACKLOG.md: Added INTEGRATOR + ACCESSIBILITY-AUDITOR task sections
- .empresa/docs/STATE.md: Updated team roster (7 agents)
- README.md: v6.3 with new agents, corrected workflow, 5 integration dimensions
- CHANGELOG.md: v6.3 release notes

---

### 🆕 Major Changes

**Functional Agent Personalities**
- Every agent now has a functional personality that drives behavior (inspired by agency-agents)
- **QA**: Evidence-only, zero-fluff. "🚨 BLOCKED: test output at line 42"
- **Backend**: Security-paranoid, contract-first. "zod validation, rate-limited 5/min"
- **Frontend**: Evidence-driven, bundle-aware. "+3.2KB gzip, a11y labels added"
- **Specifier**: Legal precision. Uses MUST/MUST NOT/SHALL. No ambiguity.
- **Researcher**: Source-cited, comparative. Every recommendation has a "because [source]"
- **Designer**: Token-obsessed, accessibility-first. Speaks in hex codes, not adjectives.

**Reality Checker Agent**
- Visual evidence specialist — defaults to "NEEDS WORK" unless overwhelming proof
- Requires screenshots/visual proof for every claim
- Cross-device verification (desktop/tablet/mobile)
- Specification vs reality comparison with gap analysis
- Blocks "fantasy approvals" — no more "A+ ratings" for basic implementations

**Accessibility Auditor Agent**
- WCAG 2.2 AA specialist — separated from general QA for deep expertise
- Screen reader testing protocol (VoiceOver, NVDA)
- Keyboard-only navigation audit
- Color contrast, zoom, reduced motion testing
- Audit report with severity levels (Critical/Serious/Moderate/Minor)

**Whimsy Injector Skill**
- 4 levels of strategic delight: Subtle → Interactive → Discovery → Contextual
- Micro-interaction specs with accessibility fallbacks
- Microcopy library (loading, error, success, empty states)
- Easter egg planning (Konami code, hidden features)
- All whimsy respects `prefers-reduced-motion` and screen readers

### 📚 Documentation Updated
- PROMPT-INICIAL.md: 8 agents total, new Phase 4 (QA + Reality + A11y), new slash commands
- .empresa/prompts/designer-agent.md: Added functional personality + Whimsy phase
- .empresa/prompts/frontend-agent.md: Added functional personality + bundle awareness
- .empresa/prompts/backend-agent.md: Added functional personality + security-first approach
- .empresa/prompts/qa-agent.md: Added functional personality + contract verification
- .empresa/prompts/reality-checker.md: New visual evidence agent
- .empresa/prompts/accessibility-auditor.md: New WCAG specialist
- .empresa/skills/whimsy-injector.md: New delight design skill
- README.md: v6.2 with new agents, personalities, features
- CHANGELOG.md: v6.2 release notes

---

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
