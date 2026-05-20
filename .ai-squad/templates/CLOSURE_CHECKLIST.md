# Closure Checklist — AI-SQUAD v7.1

Protocolo de cierre en 4 pasos. Ejecutar al finalizar cada sprint/experimento.

## Paso 1: Sync Docs

- [ ] `docs/BACKLOG.md` — marcar todas las tareas como DONE o archive
- [ ] `.ai-squad/docs/ACTIVE.md` — limpiar (vacío = sin tareas activas)
- [ ] `.ai-squad/docs/DONE.md` — añadir resumen del sprint
- [ ] `.ai-squad/docs/STATE.md` — actualizar estado actual
- [ ] `.ai-squad/docs/GAP_APPROVAL.md` — cerrar gaps resueltos

## Paso 2: Engram Memory

- [ ] Guardar summary en Engram:
  - Qué se construyó
  - Decisiones clave
  - Bugs encontrados y corregidos
  - Lecciones aprendidas

## Paso 3: Startup Instructions

- [ ] Generar `SERVIDOR.txt` (o actualizar) con:
  - Puerto usado
  - Comando de arranque
  - Comando de recovery (`lsof -i :PUERTO`, `kill`)
- [ ] Si existe, generar/actualizar `arrancar.sh`

## Paso 4: Cost Tracking

- [ ] Registrar modelos usados en `.ai-squad/docs/COST_TRACKING.md`
  - Qué agente ejecutó cada fase
  - Qué modelo se usó realmente
  - Desviaciones respecto a agents.json

---

## Post-Cierre

- [ ] Commit con mensaje: "cierre: [sprint-name] — [summary]"
- [ ] Si es experimento: copiar resumen a diario-de-experimentos/
