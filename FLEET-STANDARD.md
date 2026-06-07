# Fleet Standard
**Established:** 2026-06-06 | **Updated:** 2026-06-07

Living document. Defines structure, naming conventions, contribution rules, and protocols for the XO fleet.

---

## Naming Conventions

| Entity | Convention | Example |
|--------|-----------|---------|
| Vessel IDs | lowercase-kebab | `claudia`, `nirto5-1` |
| Skill directories | lowercase-kebab | `med-suite`, `agent-omniscience` |
| XO branches | `xo/<descriptor>` | `xo/local-deps`, `xo/patches` |
| Modelfile variants | `Modelfile.<tier>` | `Modelfile.triage`, `Modelfile.fast` |
| XO custom models | `XO_<Base><Variant>` | `XO_Gemma_31B`, `XO_MedGemma_4B` |
| Vessel docs | `profile.json` + `system/` | `fleet-ops/claudia/profile.json` |
| Fleet protocols | `FLEET_<NAME>.md` in fleet-ops root | `FLEET_FORK_PROTOCOL.md` |

---

## Vessel Profile Schema

All vessel profiles live in `fleet-ops/<vessel>/profile.json`.  
Schema: `fleet-ops/profile-schema.json`

**Required fields:** `id`, `hostname`, `version`, `os`, `hardware`, `status`, `identity`  
**Optional extended:** `services`, `models`, `capabilities`, `network`, `contributions`, `launchd_agents`

**Version bump trigger:** Any structural change to hardware, services, or identity.

---

## Repo Protocol

### Adding a new repo
1. Add to `~/bin/fleet-pull` AND `fleet-ops/bin/fleet-pull`
2. Add to `indexes/REPOS.md` in The-Nexus
3. Commit fleet-ops, commit The-Nexus

### Third-party repos with local changes
Fork — do not stash. See `fleet-ops/FLEET_FORK_PROTOCOL.md`.

Format in fleet-pull: `"path:upstream"` for forked repos so pulls track the original.

---

## Skills Protocol

### venv placement
**Never** put `venv/`, `node_modules/`, or `.git/` inside `~/clawd/skills/`.  
OpenClaw's skills scanner opens every file recursively — large trees exhaust file descriptors.  
All venvs → `~/clawd/.venvs/<skill-name>/`

### OpenClaw skill registration
Two steps required — allowlist alone is not enough:
1. Add skill name to `agents.defaults.skills` in `~/.openclaw/openclaw.json`
2. Create `~/.openclaw/skills/<name>/SKILL.md` (frontmatter: name, description, metadata emoji)

### SKILL.md frontmatter minimum
```yaml
---
name: skill-name
description: One line used by the agent to decide relevance
metadata:
  clawdbot:
    emoji: "🔧"
---
```

---

## Modelfile Standards

All XO Modelfiles are tracked in `xo-modelfiles` repo.  
Canonical copies also in the owning skill directory.

**Routing suppression required** for MedGemma models — they emit `classify:` / `<|think|>` preambles without explicit SYSTEM suppression.

Parameter rationale: `xo-modelfiles/REASONING.md`

---

## Usage Tracking (Target State)

Per VISION.md, all tools/models/skills should log:
- Timestamp, success/failure, duration, confidence, context summary

Not yet implemented. When built: data feeds The-Nexus RAG and daily LoRA pipeline.

---

## The Archivist

Permanent fleet-wide crew position (per VISION.md).  
Responsibilities: parse Quorum conversations, run verification, auto-ingest high-confidence data, extract from CLI sessions, reinject at strategic points.

Not yet staffed. Crew position reserved.

---

## Commit Hygiene

- `fleet-ops` commits: vessel data, protocols, bin scripts
- `The-Nexus` commits: indexes, standards, vision updates
- Never commit venvs, `__pycache__`, `.pyc`, `.DS_Store`
- All fleet repos are private by default
