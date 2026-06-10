# Fleet Standard
**Established:** 2026-06-06 | **Updated:** 2026-06-07 (added vessel index requirement)

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

## Vessel Index Requirement ⚠️ Fleet Rule

Every vessel **must** maintain a `system/` directory in `fleet-ops/<vessel>/system/` containing:

| File | Required | Contents |
|------|----------|---------|
| `PROJECTS.md` | **mandatory** | All in-house projects and their status |
| `REPOS.md` | **mandatory** | All git repos checked out on this vessel, with purpose |
| `PAPERS.md` | **mandatory** | Paper catalog with RAG coverage status |
| `SERVICES.md` | recommended | Running services, ports, LaunchAgents/systemd units |
| `OLLAMA_MODELS.md` | recommended | Full model inventory |
| `STORAGE.md` | recommended | Disk topology and mount points |

### PROJECTS.md minimum format

```markdown
# <Vessel> — Projects
**Updated:** YYYY-MM-DD

| Project | Path | Status | Description |
|---------|------|--------|-------------|
| my-project | ~/path/to/project | active | What it does |
```

### REPOS.md minimum format

```markdown
# <Vessel> — Repos
**Updated:** YYYY-MM-DD

| Repo | Path | Remote | Branch | Notes |
|------|------|--------|--------|-------|
| repo-name | ~/path | github.com/... | main | purpose |
```

### PAPERS.md minimum format

```markdown
# <Vessel> — Papers
**Updated:** YYYY-MM-DD | Total: N | RAG coverage: N%

| Collection | Count | Topic |
|-----------|-------|-------|
| local | N | NICE/NIH guidelines |
```

### Enforcement

- Index files must be updated when projects/repos/papers change
- Indexes feed `The-Nexus/indexes/` — the Nexus pulls from these, not the other way around
- Vessels without indexes are considered **undocumented** and cannot be referenced in Nexus indexes accurately
- Current undocumented vessels: **sdigits**, **thoth**, **nirto5-1**, **mintbookpro** (all missing `PROJECTS.md` and `REPOS.md`)

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

### Skills Architecture ⚠️ Fleet Rule

**Base skills** (bundled in upstream `openclaw` npm package) may be added to the always-loaded allowlist.  
**Custom/coopted skills** are **never** in the always-loaded allowlist — they are discovered and loaded on demand.

| Layer | Mechanism | Status |
|-------|-----------|--------|
| Layer 0 | `floor-manager` SKILL.md roster — compact always-loaded index | ✅ live |
| Layer 1 | `dispatch.py` keyword routing | ✅ live |
| Layer 2 | Vector RAG over `private-agent-library` | planned |

**floor-manager** is the one permanent exception — it stays in the allowlist as the routing gateway until Layer 2 RAG is operational.

### openclaw-Claudia fork

Custom additions live in `~/clawd/openclaw-Claudia/` — a thin-fork repo containing only the delta over the upstream package.

- **Rule:** Only skills not present in `/npm-global/lib/node_modules/openclaw/skills/` go here
- **Symlinks:** Each custom skill is symlinked: `~/.openclaw/skills/<name>/` → `~/clawd/openclaw-Claudia/skills/<name>/`
- **Tracked in:** `fleet-pull`, `The-Nexus/indexes/REPOS.md`
- **Upstream link:** `~/clawd/openclaw-Claudia/UPSTREAM.md`

When adding a new custom skill:
1. Create `~/clawd/openclaw-Claudia/skills/<name>/SKILL.md`
2. Symlink: `ln -s ~/clawd/openclaw-Claudia/skills/<name> ~/.openclaw/skills/<name>`
3. Add to `floor-manager` SKILL.md roster (Layer 0)
4. Add keywords to `floor-manager/dispatch.py` (Layer 1)
5. Do **not** add to the openclaw.json allowlist

### Current bundled skills allowlist (openclaw v2026.5.22)

```
apple-notes  apple-reminders  coding-agent  gemini  gh-issues  github
healthcheck  notion  summarize  taskflow  tmux  weather
```

Plus: `floor-manager` (custom, routing gateway exception)

### venv placement
**Never** put `venv/`, `node_modules/`, or `.git/` inside `~/clawd/skills/`.  
OpenClaw's skills scanner opens every file recursively — large trees exhaust file descriptors.  
All venvs → `~/clawd/.venvs/<skill-name>/`

### OpenClaw skill registration (bundled skills only)
Two steps required — allowlist alone is not enough:
1. Add skill name to `agents.defaults.skills` in `~/.openclaw/openclaw.json`
2. Verify the skill exists in `/npm-global/lib/node_modules/openclaw/skills/`

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
