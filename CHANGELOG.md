# Changelog - AI-SQUAD Framework

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
