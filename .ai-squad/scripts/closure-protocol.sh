#!/bin/bash
# AI-SQUAD v7.1 Closure Protocol
# Ejecutar al finalizar cada sprint/experimento
# Usage: bash .ai-squad/scripts/closure-protocol.sh [sprint-name]

set -e

SPRINT_NAME="${1:-sin-nombre}"
DATE=$(date +%Y-%m-%d)

echo "=== AI-SQUAD Closure Protocol: $SPRINT_NAME ==="
echo ""

# Step 1: Sync Docs
echo "[1/4] Syncing documentation..."
BACKLOG="docs/BACKLOG.md"
ACTIVE=".ai-squad/docs/ACTIVE.md"
DONE=".ai-squad/docs/DONE.md"
STATE=".ai-squad/docs/STATE.md"

if [ -f "$ACTIVE" ]; then
    echo "" >> "$DONE"
    echo "## Sprint $SPRINT_NAME ($DATE)" >> "$DONE"
    echo "- Closed: $(date)" >> "$DONE"
    echo "" > "$ACTIVE"
    echo "ACTIVE.md cleared ✓"
fi

if [ -f "$STATE" ]; then
    echo "# Estado: Sprint completado ($DATE)" > "$STATE"
    echo "Ultimo sprint: $SPRINT_NAME" >> "$STATE"
    echo "STATE.md updated ✓"
fi

# Step 2: Generate Engram summary prompt
echo ""
echo "[2/4] Engram summary prompt (copy-paste for the AI):"
echo "---------------------------------------------------"
echo "Save to Engram: Sprint $SPRINT_NAME completed on $DATE."
echo "Summary: <write summary here>"
echo "---------------------------------------------------"

# Step 3: Generate SERVIDOR.txt if not exists
echo ""
echo "[3/4] Checking startup instructions..."
if [ ! -f "SERVIDOR.txt" ]; then
    echo "# SERVIDOR — $SPRINT_NAME" > SERVIDOR.txt
    echo "Generado: $DATE" >> SERVIDOR.txt
    echo "Puerto: " >> SERVIDOR.txt
    echo "Comando: " >> SERVIDOR.txt
    echo "Recovery: lsof -i :PUERTO && kill PID" >> SERVIDOR.txt
    echo "SERVIDOR.txt template created ✓"
else
    echo "SERVIDOR.txt already exists (update manually) ✓"
fi

# Step 4: Cost tracking reminder
echo ""
echo "[4/4] Cost tracking reminder:"
echo "Update .ai-squad/docs/COST_TRACKING.md with models used"
echo ""

echo "=== Closure complete: $SPRINT_NAME ==="
echo "Don't forget to commit!"
