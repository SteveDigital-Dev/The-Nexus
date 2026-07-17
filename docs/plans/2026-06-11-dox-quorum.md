# Plan: DOX Tree — quorum

**Created:** 2026-06-11  
**Priority:** Medium  
**Repo:** `/mnt/DATA/Git/SteveDigital Projects/quorum`  
**Why:** Multi-agent deliberation framework with backend (FastAPI, orchestrator, agents) and frontend (Next.js). Well-defined boundaries. No AGENTS.md. Contracts protect the deliberation protocol from drift.  
**Status:** ⬜ Not started

---

## Goal

Initialize DOX tree covering the full-stack quorum system — backend orchestrator, agent models, API, and frontend.

---

## Current State

- No `AGENTS.md`
- Backend: `backend/` — FastAPI app, orchestrator, agents, memory, models
- Frontend: `frontend/` — Next.js, Tailwind
- `graphify-out/` — auto-generated
- `SKILL.md` — quorum registered as a skill
- `docker-compose.yml`, `setup.sh`

---

## Tasks

### T1 — Root AGENTS.md
- DOX Core Contract + Read/Update rules
- Repo purpose: multi-agent deliberation framework (Quorum board), Cerberus-style voting, fleet decision support
- Global rules: deliberation protocol is the core contract — changes require Quorum approval, API contracts between frontend/backend must be kept in sync, `SKILL.md` frontmatter is the skill registration source of truth
- Child DOX Index

### T2 — `backend/` child AGENTS.md
- Purpose: FastAPI app, orchestrator, agent definitions, memory, models
- Contracts: API route changes require frontend update, orchestrator deliberation flow must not be broken, memory module is append-only during sessions
- Sub-index: `orchestrator/`, `agents/`, `api/`, `memory/`, `models/`

### T3 — `frontend/` child AGENTS.md
- Purpose: Next.js Quorum UI
- Contracts: API endpoint URLs sourced from env/config only (no hardcoding), Tailwind config is the style authority, component naming PascalCase

### T4 — `graphify-out/` child AGENTS.md
- Purpose: auto-generated, do not hand-edit

---

## Success Criteria

- Root AGENTS.md establishes deliberation protocol as protected contract
- Backend and frontend each have child docs
- Any agent knows the API contract must stay in sync across both sides

## Estimated Effort

Small — clean structure, 4 files. ~half a session.
