# Plan: DOX Tree — fleet-ops

**Created:** 2026-06-11  
**Priority:** High  
**Repo:** `/mnt/DATA/Git/SteveDigital Projects/fleet-ops`  
**Why:** Vessel submodules, orchestrator scripts, and bin tools are touched regularly by fleet agents. No existing AGENTS.md. Contracts prevent cross-vessel contamination and protect profile schemas.  
**Status:** ✅ Complete — 2026-06-11

---

## Goal

Initialize a DOX tree covering the fleet orchestrator, vessel profile submodules, and bin scripts.

---

## Current State

- No `AGENTS.md` exists
- Top-level: `fleet.py`, `fleet-rollcall.md`, `FLEET_FORK_PROTOCOL.md`, `profile-schema.json`, `README.md`
- Per-vessel dirs: `sdigits/`, `claudia/`, `thoth/`, `nirto5-1/`, `mintbookpro/`, `dj/` — each with `profile.json` and `system/` subdirs
- `bin/` — `fleet-pull` script
- `graphify-out/` — auto-generated, do not hand-edit

---

## Tasks

### T1 — Root AGENTS.md
- DOX Core Contract + Read/Update rules
- Repo purpose: vessel docs, profiles, protocols, fleet orchestrator
- Global rules: `profile-schema.json` is the schema authority, vessel IDs are lowercase-kebab, never commit secrets into profiles, `graphify-out/` is auto-generated
- Child DOX Index

### T2 — `bin/` child AGENTS.md
- Purpose: fleet utility scripts
- Contracts: `fleet-pull` canonical copy lives here — `~/bin/fleet-pull` is a copy; keep both in sync when editing, vessel case blocks required for each new vessel

### T3 — Per-vessel child AGENTS.md (one template, applied to each)
- Create `sdigits/AGENTS.md`, `claudia/AGENTS.md`, `thoth/AGENTS.md`, `nirto5-1/AGENTS.md`, `mintbookpro/AGENTS.md`
- Purpose: vessel-specific profile and system docs
- Contracts: `profile.json` fields must match `profile-schema.json`, `system/` docs are collector output (read-only unless manually surveyed), SSH user per vessel
- Each doc notes the vessel's Tailscale IP, SSH user, and Hermes profile status

### T4 — `graphify-out/` child AGENTS.md
- Purpose: auto-generated graph outputs
- Contracts: do not hand-edit, regenerate with `/graphify` from project root

---

## Success Criteria

- Root AGENTS.md in place
- bin/, graphify-out/, and all 5 active vessel dirs have child docs
- Vessel docs include SSH user, Tailscale IP, and Hermes profile status as quick reference
- Any agent knows not to edit graphify-out or profile schemas without reading the chain

## Estimated Effort

Small-medium — 8 files but vessel docs are mostly templated. ~1 session.
