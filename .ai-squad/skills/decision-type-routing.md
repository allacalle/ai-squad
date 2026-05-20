# Decision Type Routing

Skill that classifies every decision into one of four types so the agent knows HOW to present it to the Owner.

## The Four Decision Types

```
┌─────────────────────────────────────────────────────────────────┐
│                   DECISION TYPE ROUTING                          │
├─────────────────┬──────────────┬──────────────┬──────────────────┤
│   ABANICO       │  INSTINTIVO  │   CERRADO    │   INCIERTO       │
│   AMPLIO        │              │              │                  │
├─────────────────┼──────────────┼──────────────┼──────────────────┤
│ Muchas opciones │ Gusto/taste  │ 1 respuesta  │ Falta contexto   │
│ (>5)            │ personal     │ correcta     │ del Owner        │
├─────────────────┼──────────────┼──────────────┼──────────────────┤
│ IA investiga    │ IA pregunta  │ IA resuelve  │ IA reporta       │
│ reduce a 2-3    │ directo      │ + opcional   │ incertidumbre    │
│                 │              │ confirmación │ y pregunta       │
├─────────────────┼──────────────┼──────────────┼──────────────────┤
│ Tiempo humano:  │ Tiempo:      │ Tiempo:      │ Tiempo:          │
│ ~10 seg         │ ~2 seg       │ ~0 seg       │ ~5 seg           │
└─────────────────┴──────────────┴──────────────┴──────────────────┘
```

## Decision Classification Tree

When you face a decision, ask yourself:

```
1. ¿Hay más de 5 opciones viables?
   │
   ├── SÍ → ABANICO AMPLIO
   │        → Investiga, reduce a 2-3 con pros/cons
   │        → Owner elige
   │
   └── NO → 2. ¿Requiere gusto personal del Owner?
            │
            ├── SÍ → INSTINTIVO
            │        → Pregunta directamente al Owner
            │        → NO investigues, NO propongas opciones
            │
            └── NO → 3. ¿Hay 1 respuesta técnicamente correcta?
                     │
                     ├── SÍ → CERRADO
                     │        → Resuelve directamente
                     │        → Opcional: confirma con Owner
                     │
                     └── NO → INCIERTO
                              → Reporta tu incertidumbre
                              → Explica qué información falta
                              → Owner aclara
```

## Agent Decision Type Assignments

| Agent | Default Type | Why |
|-------|-------------|-----|
| Researcher | ABANICO AMPLIO | Investiga stacks, librerías, enfoques |
| Architect | ABANICO AMPLIO | Propone opciones arquitectónicas |
| UX Architect | INSTINTIVO | Flujos, responsive, brand — gusto del Owner |
| Designer | INSTINTIVO | Paletas, direcciones visuales |
| A11y Auditor | CERRADO | WCAG rules — aplicar estándar |
| Specifier | CERRADO | Escribir contratos contra ADRs |
| Frontend | CERRADO | Ejecutar specs bloqueados |
| Backend | CERRADO | Ejecutar specs bloqueados |
| QA | CERRADO | Verificar contra specs + ADRs |
| Integrator | CERRADO | Verificar consistencia |
| Reality Checker | INSTINTIVO + CERRADO | Juzgar usabilidad + verificar |
| Process Auditor | CERRADO | Verificar proceso |
| Uncertainty Reporter | INCIERTO | Reportar dudas |

## Examples

### ABANICO AMPLIO
```
❌ "He investigado 30 frameworks de frontend. Aquí tienes la lista."
✅ "De 30 opciones, he filtrado a 3 viables:
   A) React — ecosistema maduro, 43k⭐, 72% del mercado
   B) Vue — más simple, 22k⭐, curva suave
   C) Svelte — moderno, 7k⭐, menos recursos
   Owner: ¿cuál prefieres?"
```

### INSTINTIVO
```
❌ "He investigado 5 paletas de color con sus códigos hex."
✅ "Owner, ¿prefieres tonos oscuros o claros para el dashboard?"
```

### CERRADO
```
❌ "Propongo usar bcrypt... o tal vez argon2... ¿tú qué opinas?"
✅ "La decisión es cerrada: bcrypt es el estándar OWASP. Implementando.
   (Confirmación opcional: ¿confirmo bcrypt para passwords?)"
```

### INCIERTO
```
❌ "Asumo que el Owner quiere SQLite."
✅ "No sé si este proyecto escalará a miles de usuarios.
   Mi confianza es 60%. Si es MVP → SQLite. Si esperas escala → PostgreSQL.
   Owner: ¿cuál es el horizonte de usuarios?"
```
