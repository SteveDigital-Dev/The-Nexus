# Fleet Repository Index
**Updated:** 2026-06-10

Full catalog: **[PROJECT-INDEX.md](../PROJECT-INDEX.md)** (~140 repos, categorized)

---

## Core Fleet Repos

| Repo | Path (sdigits) | Purpose |
|------|----------------|---------|
| The-Nexus | `/mnt/DATA/Git/The-Nexus` | Central index, standards, fleet navigation |
| private-agent-library | `/mnt/DATA/Git/private-agent-library` | Skills, models, dashboards, profiles, registry |
| fleet-ops | `/mnt/DATA/Git/SteveDigital Projects/fleet-ops` | Vessel submodules, orchestrator, protocols |
| agent-os | `/mnt/DATA/Git/SteveDigital Projects/agent-os` | Agent OS core |
| project-cerberus | `/mnt/DATA/Git/SteveDigital Projects/project-cerberus` | Cerberus deliberation system |
| quorum | `/mnt/DATA/Git/SteveDigital Projects/quorum` | Quorum multi-agent framework |
| aria-obsidian | `/mnt/DATA/Git/aria-obsidian` | Primary Obsidian knowledge vault |

## Core Fleet Repos (claudia paths)

| Repo | Path (claudia) | Notes |
|------|----------------|-------|
| The-Nexus | `/Users/digital/clawd/The-Nexus` | |
| fleet-ops | `/Users/digital/clawd/fleet-ops` | |
| private-agent-library | `/Users/digital/clawd/repos/private-agent-library` | |
| project-cerberus | `/Users/digital/clawd/project-cerberus` | |
| med-suite | `/Users/digital/clawd/skills/med-suite` | Active skill — not in SteveDigital-Dev GitHub |
| xo-modelfiles | `/Users/digital/clawd/xo-modelfiles` | Claudia-local Modelfiles |
| openclaw-Claudia | `/Users/digital/clawd/openclaw-Claudia` | Thin fork, claudia vessel only |

## MCP / Third-Party Forks (claudia)

| Repo | Path | Fork target | Branch |
|------|------|-------------|--------|
| blender-mcp | `/Users/digital/Git/blender-mcp` | origin | main |
| comfyui-mcp-server | `/Users/digital/Git/comfyui-mcp-server` | origin | main |
| godot-mcp | `/Users/digital/Git/godot-mcp` | upstream (Coding-Solo) → SteveDigital-Dev fork | `xo/local-deps` |
| UnityNaturalMCP | `/Users/digital/Git/UnityNaturalMCP` | origin | main |
| Unreal_mcp | `/Users/digital/Git/Unreal_mcp` | upstream (ChiR24) → SteveDigital-Dev fork | main |

Fork protocol: `fleet-ops/FLEET_FORK_PROTOCOL.md`

---

## Sync

```bash
fleet-pull    # Pull all tracked repos, reports updated / up-to-date / errors
```

Script locations:
- Live: `~/bin/fleet-pull`
- Canonical: `fleet-ops/bin/fleet-pull` (keep in sync)

GitHub org: `https://github.com/SteveDigital-Dev/` (101 repos, last synced 2026-05-18)
