# Plan: DOX Tree — agent-os

**Created:** 2026-06-11  
**Priority:** High  
**Repo:** `/mnt/DATA/Git/SteveDigital Projects/agent-os`  
**Why:** Core Agent OS — permission-tiered job executor, Obsidian vault output, SQLite job registry. Partially implemented with stubs. Multiple agents building against specs. High drift risk during active construction.  
**Status:** ✅ Complete — 2026-06-11

---

## Goal

Upgrade existing `AGENTS.md` (currently a coding-agent orientation brief) to a full DOX tree with child contracts for the major implementation boundaries.

---

## Current State

- `AGENTS.md` exists — good coding orientation but not DOX format (no Child DOX Index, no per-folder contracts)
- Key subdirs: `core/`, `agentos/`, `implementation/`, `docs/`, `data/`, `jobs/`, `config/`
- `graphify-out/` — already present (auto-generated)
- `CLAUDE.md`, `DESIGN.md`, `DESIGN_BRIEF.md`, `HANDOFF.md`, `INFORMATION_ARCHITECTURE.md` — rich design docs

---

## Tasks

### T1 — Root AGENTS.md
Rewrite existing `AGENTS.md` to DOX format, preserving the valuable orientation content:
- DOX Core Contract + Read/Update rules
- Repo purpose: local-first agent OS, permission-tiered executor, Obsidian vault output, SQLite registry
- Global rules: read `CLAUDE.md` + `DESIGN.md` before any code changes, implementation specs in `implementation/` are authoritative, kernel stubs must not be called without implementing first
- Child DOX Index

### T2 — `core/` child AGENTS.md
- Purpose: kernel, executor, permission tiers, job registry
- Contracts: SQLite schema changes require migration, permission tier levels defined in design docs, no breaking changes to job runner interface

### T3 — `implementation/` child AGENTS.md
- Purpose: phase-by-phase build specs
- Contracts: specs are read-only contracts (edit only to correct errors, not to match ad-hoc impl), completed phases must be marked done, do not skip phases

### T4 — `docs/` child AGENTS.md
- Purpose: architecture, design briefs, handoff docs
- Contracts: design docs (`DESIGN.md`, `INFORMATION_ARCHITECTURE.md`) are authoritative — code must match them, not vice versa; `HANDOFF.md` updated on major milestones

### T5 — `jobs/` child AGENTS.md
- Purpose: job definitions and templates
- Contracts: job schema matches SQLite registry schema, naming convention for job files

### T6 — `graphify-out/` child AGENTS.md
- Purpose: auto-generated graph outputs, do not hand-edit

---

## Success Criteria

- Root AGENTS.md is DOX-compliant, preserves orientation content
- 5 child docs covering core implementation boundaries
- Design docs explicitly protected from code-first overwrite
- Any agent reads the DOX chain before touching kernel or stubs

## Estimated Effort

Medium — existing AGENTS.md has good content to preserve, design docs need careful referencing. ~1 session.
