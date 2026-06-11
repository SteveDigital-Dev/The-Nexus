# Plan: DOX Tree — private-agent-library

**Created:** 2026-06-11  
**Priority:** High  
**Repo:** `/mnt/DATA/Git/private-agent-library`  
**Why:** Largest control-plane repo (874 skills, models, dashboards, registry, scripts). Most agents touch it. Highest drift risk without per-folder contracts.  
**Status:** ⬜ Not started

---

## Goal

Replace the existing agent-workspace-style `AGENTS.md` with a proper DOX tree — root contract plus child docs for every durable subdirectory boundary.

---

## Current State

- `AGENTS.md` exists but is a pre-DOX agent workspace brief (session startup, memory reading, SOUL.md references) — not a DOX contract
- No child AGENTS.md files
- Key subdirectories: `skills/`, `models/`, `dashboards/`, `data/`, `fleet/`, `registry/`, `docs/`, `scripts/`, `agents/`, `memory/`, `quorum/`, `workflows/`

---

## Tasks

### T1 — Root AGENTS.md
Replace existing `AGENTS.md` with DOX root contract covering:
- DOX Core Contract + Read/Update rules
- Repo purpose: fleet control plane, skill/model/dashboard/registry host
- Global rules: no secrets in files, collector scripts read-only, CONTEXT.md is glossary authority, ADRs in `docs/adr/`
- Child DOX Index pointing to all child docs

### T2 — `skills/` child AGENTS.md
- Purpose: 874 registered skills, SKILL.md frontmatter standard
- Contracts: required frontmatter fields, naming convention (kebab-case), no executable code in SKILL.md
- Sub-index for major skill category prefixes (`infraops-*`, `aa-*`, `ec-*`, etc.)

### T3 — `models/` child AGENTS.md
- Purpose: Ollama Modelfiles for InfraOps specialist fleet
- Contracts: Modelfile naming, base model pinning, temperature/context standards, build commands
- Covers: infraops-fleet, infraops-deploy, infraops-health, infraops-security, infraops-librarian, infraops-orchestrator, infraops-pro, micro-infraops

### T4 — `dashboards/` child AGENTS.md
- Purpose: static HTML+JS dashboards, fetch-poll data feeds
- Contracts: no live API unless backend exists, JS payload naming, poll interval standard (30s), CORS-safe file:// compatibility
- Sub-index: fleet-command, fleet-code-ide, knowledge-graph-3d, agents, projects

### T5 — `fleet/` child AGENTS.md
- Purpose: per-vessel system profiles, machine-db.json, hardware facts
- Contracts: profile schema source of truth is `fleet/profile-schema.json`, machine-db.json read-only (collector output), vessel IDs lowercase-kebab
- Sub-index: sdigits, claudia, thoth, nirto5-1, mintbookpro, dj, vessels/

### T6 — `registry/` child AGENTS.md
- Purpose: agent registry, teams, routing, skill index, API budget tracking
- Contracts: registry files are append-only unless explicitly pruning, usage tracking format

### T7 — `docs/` child AGENTS.md
- Purpose: ADRs, plans, audit reports, architecture docs
- Contracts: ADRs in `docs/adr/`, plans in `docs/plans/`, never delete ADRs, plans are append-only

### T8 — `scripts/` child AGENTS.md
- Purpose: collectors, watchdogs, generators
- Contracts: collectors are read-only (no push/pull/reset), output paths in `data/` only, scripts must be idempotent

---

## Success Criteria

- Root AGENTS.md is DOX-compliant, replaces old workspace brief
- 7 child AGENTS.md files covering all durable subdirectory boundaries
- Any agent opening the repo reads the DOX chain before editing
- No duplication between root and child docs

## Estimated Effort

Medium — 8 files, well-understood structure. ~1 focused session.
