# 🚀 INIT - Get Started in 2 Minutes

Step-by-step guide to activate the framework in your project.

---

## Step 1: Copy the Framework

```bash
# 1. Go to your project (where package.json lives)
cd /path/to/your-project

# 2. Copy the .empresa/ folder
cp -r /path/to/empresa-ia-framework/.empresa/ ./

# 3. Copy documentation files
cp /path/to/empresa-ia-framework/*.md ./

# 4. Copy templates
cp -r /path/to/empresa-ia-framework/templates ./

# 5. Verify everything copied
ls -la .empresa/
ls -la *.md
```

**Expected result**:
```
.empresa/
├── config/
│   └── opencode.json
├── content/
│   ├── about-brand.md
│   └── brand-voice.md
├── docs/
│   ├── BACKLOG.md
│   ├── ACTIVE.md
│   ├── DONE.md
│   └── STATE.md
├── prompts/
│   ├── designer-agent.md
│   ├── frontend-agent.md
│   ├── backend-agent.md
│   └── qa-agent.md
└── skills/
    ├── brand-voice-builder.md
    ├── content-matrix.md
    ├── post-writer.md
    └── [more skills...]

DESIGN.md
PROMPT-INICIAL.md
INIT.md
README.md
```

---

## Step 2: Configure Your Project

Edit `.empresa/CONFIG.md`:

```markdown
# Project Configuration

## Project
- Name: [YOUR PROJECT NAME]
- Type: [backend/frontend/fullstack]
- Stack: [Node/React/Python/etc]
```

---

## Step 3: Define Your First Sprint

Edit `.empresa/docs/BACKLOG.md`:

```markdown
# 📋 BACKLOG - Sprint #1

## Sprint Goal
[Describe what you want to achieve]

## DESIGNER Tasks
- [ ] Create DESIGN.md with color tokens
- [ ] Map user flow in UX_FLOW.md

## FRONTEND Tasks
- [ ] Create base layout
- [ ] Implement Header component
- [ ] Create login page

## BACKEND Tasks
- [ ] Setup server
- [ ] Create /api/health endpoint
- [ ] Implement JWT auth

## QA Tasks
- [ ] Setup testing framework
- [ ] Tests for auth service
- [ ] Coverage > 70%
```

---

## Step 4: Launch the AI

### Option A: Using OpenCode/Claude Code (RECOMMENDED)

Tell your AI:

> "Read PROMPT-INICIAL.md and start acting as CEO."

The AI will automatically:
1. Read the framework
2. Interview you about requirements
3. Launch agents in parallel
4. Monitor progress

### Option B: Manual Terminal Launch

Open multiple AI sessions, paste each prompt:

```bash
# Session 1 - DESIGNER
cat .empresa/prompts/designer-agent.md

# Session 2 - FRONTEND
cat .empresa/prompts/frontend-agent.md

# Session 3 - BACKEND
cat .empresa/prompts/backend-agent.md

# Session 4 - QA
cat .empresa/prompts/qa-agent.md
```

---

## Step 5: Monitor Progress

```bash
# Check overall status
cat .empresa/docs/STATE.md

# See who's doing what
cat .empresa/docs/ACTIVE.md

# See what's completed
cat .empresa/docs/DONE.md

# Check pending tasks
cat .empresa/docs/BACKLOG.md
```

---

## Step 6: Verify Results

When agents report completion:

```bash
# Run tests
npm test

# Verify build
npm run build

# Check coverage
npm run coverage
```

---

## Startup Checklist

- [ ] `.empresa/` copied to project
- [ ] `.md` files copied to root
- [ ] `DESIGN.md` configured (or run brand-voice-builder)
- [ ] `BACKLOG.md` defined
- [ ] AI launched with PROMPT-INICIAL.md

---

## Troubleshooting

### "Can't find BACKLOG.md"
```bash
ls -la .empresa/
ls -la .empresa/docs/
```

### "Agent doesn't know what to do"
1. Verify BACKLOG.md has clear tasks
2. Use the task format shown above

### "Two agents want the same file"
1. Stop everything
2. Redistribute tasks in BACKLOG.md
3. Each agent has exclusive access to their files

---

## Next Steps

After setup, read:

👉 **[README.md](./README.md)** — Full framework overview
