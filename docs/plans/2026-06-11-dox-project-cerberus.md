# Plan: DOX Tree — project-cerberus

**Created:** 2026-06-11  
**Priority:** Medium  
**Repo:** `/mnt/DATA/Git/SteveDigital Projects/project-cerberus`  
**Why:** Cerberus 3-pass deliberation system (Poet→Scientist→Arbiter). Existing AGENTS.md is a pre-DOX repo guidelines file with Windows paths and stale references. Small repo but precision matters — deliberation protocol must not drift.  
**Status:** ⬜ Not started

---

## Goal

Replace existing `AGENTS.md` (stale Windows-path repo guidelines) with a proper DOX tree.

---

## Current State

- `AGENTS.md` exists but references Windows paths (`C:\Users\Steve Digital\Desktop\...`), pre-implementation spec state — largely stale
- Key files: `project_cerberus.md` (spec), `backend/`, `frontend/`, `config/`, `data/`, `docs/`
- `graphify-out/` — auto-generated
- `SKILL.md` — cerberus registered as a skill
- `run_cerberus.sh`, `pytest.ini`, `requirements.txt`

---

## Tasks

### T1 — Root AGENTS.md
Replace stale existing file with DOX root contract:
- DOX Core Contract + Read/Update rules
- Repo purpose: Cerberus 3-pass deliberation (Poet → Scientist → Arbiter), used by fleet agents for risky/irreversible decisions
- Global rules: `project_cerberus.md` is the spec authority, deliberation pass order is fixed (never skip or reorder), `SKILL.md` is the skill registration record, Linux paths only (Windows paths in old AGENTS.md are stale)
- Child DOX Index

### T2 — `backend/` child AGENTS.md
- Purpose: FastAPI deliberation engine, model loading, orchestration, role config
- Contracts: three-pass flow is immutable (Poet=0.7 temp, Scientist=0.15, Arbiter=0.1), config/role YAMLs define pass parameters, no pass may write to another pass's output

### T3 — `frontend/` child AGENTS.md
- Purpose: Gradio UI for deliberation sessions
- Contracts: UI reflects pass outputs read-only, no UI action may trigger re-ordering of passes

### T4 — `config/` child AGENTS.md
- Purpose: YAML role definitions for each deliberation pass
- Contracts: temperature values are fixed per spec, role names match `project_cerberus.md` definitions

### T5 — `graphify-out/` child AGENTS.md
- Purpose: auto-generated, do not hand-edit

---

## Success Criteria

- Stale Windows-path AGENTS.md replaced with DOX-compliant root contract
- Deliberation pass order and temperatures explicitly protected in backend child doc
- 4 child docs in place
- Linux paths throughout

## Estimated Effort

Small — 5 files, small repo. Main work is replacing stale content. ~half a session.
