# Task Handoffs — AI-SQUAD v7.1

Plantillas de handoff listas para copiar-pegar-lanzar a cada agente. El orquestador NO debe escribir código — debe usar estos handoffs para delegar.

**v7.1**: Todos los handoffs incluyen `decision_type` y `model_required`.

---

## Template: Frontend Task

```
=== HANDOFF: {FE-NNN} ===
AGENTE: Frontend
ARCHIVO: src/{path/to/file}.ts
CONTRATO:
  - Input: {props o parámetros}
  - Output: {return value}
  - Behavior: {descripción exacta}
TESTS: {N} casos
  - {descripción test 1}
  - {descripción test 2}
ADRs: {ADR-NNN}, {ADR-NNN}
DECISION TYPE: CERRADO
MODEL REQUIRED: MiniMax M2.7
FORBIDDEN: {NO hacer X, NO usar Y, NO añadir Z}
CONTEXTO:
  - Colores definidos en types.ts (COLORS object)
  - Tamaño tile: 48px
  - Grid: 8x12

SPECS: docs/specs/{SPEC-NNN}.md
ADRS: docs/architecture/{ADR-NNN}.md
TIPO: UI Component / Game Logic / Utility
```

---

## Template: Backend Task

```
=== HANDOFF: {BE-NNN} ===
AGENTE: Backend
ARCHIVO: {internal/routes/model}.go (o equivalente)
CONTRATO:
  - Endpoint: {method} /api/{path}
  - Request: {type, fields}
  - Success: {status, response shape}
  - Error: {status, error shape}
TESTS: {N} casos
  - {descripción test 1}
  - {descripción test 2}
ADRs: {ADR-NNN}, {ADR-NNN}
DECISION TYPE: CERRADO
MODEL REQUIRED: MiniMax M2.7
FORBIDDEN: {NO cambiar schema, NO añadir dependencias}

SPECS: docs/specs/{SPEC-NNN}.md
ADRS: docs/architecture/{ADR-NNN}.md
```

---

## Template: QA Task

```
=== HANDOFF: {QA-NNN} ===
AGENTE: QA
ARCHIVO: tests/{path/to/test}.ts
CONTRATO:
  - Verificar que {component/función} cumple specs
  - Verificar ADR compliance de {archivo}
TESTS: {N} casos
  - {descripción test 1}
  - {descripción test 2}
ADRs a verificar: {ADR-NNN}, {ADR-NNN}
DECISION TYPE: CERRADO
MODEL REQUIRED: DeepSeek V4 Flash
FORBIDDEN: {NO modificar código fuente, NO añadir mock data}

SPECS: docs/specs/{SPEC-NNN}.md
ADRS: docs/architecture/{ADR-NNN}.md
```

---

## Template: Integrator Task 🆕

```
=== HANDOFF: INT-{NNN} ===
AGENTE: Integrator
ARCHIVO: docs/integration/{feature}.md
CONTRATO:
  - Verificar cada ADR vs código
  - Verificar contratos cross-agent
  - Verificar que FE y BE conectan
  - Post-merge audit: dead code, orphans, test/prod divergence
DECISION TYPE: CERRADO
MODEL REQUIRED: Qwen3.5 Plus
FORBIDDEN: NO modificar código fuente

ADRS a verificar: todos en docs/architecture/
SPECS: todos en docs/specs/
```

---

## Uso

1. Orquestador lee BACKLOG.md
2. Copia el template correspondiente
3. Rellena los campos con la info de la tarea + spec + ADR
4. Lanza al agente con el handoff completo
5. Marca en ACTIVE.md: `{TASK-ID} → {Agent} → IN_PROGRESS`

**El orquestador NO toca el archivo hasta que el agente reporta DONE.**

---

*AI-SQUAD v7.1 — Decision Type Routing Edition. Handoff Protocol enforced.*
