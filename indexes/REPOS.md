# Fleet Repository Index
**Updated:** 2026-07-17

Full catalog: **[PROJECT-INDEX.md](../PROJECT-INDEX.md)** (~170 repos, categorized)

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
| agent-vaults | `/mnt/DATA/Git/agent-vaults` | Agent Obsidian vaults root |

## Core Fleet Repos (claudia paths)

| Repo | Path (claudia) | Notes |
|------|----------------|-------|
| The-Nexus | `/Users/digital/clawd/The-Nexus` | |
| fleet-ops | `/Users/digital/clawd/fleet-ops` | |
| private-agent-library | `/Users/digital/clawd/repos/private-agent-library` | |
| agent-vaults | `/Users/digital/clawd/repos/agent-vaults` | Agent Obsidian vaults; includes `aria-obsidian/wiki/ops.md` |
| project-cerberus | `/Users/digital/clawd/project-cerberus` | |
| med-suite | `/Users/digital/clawd/skills/med-suite` | Active skill — not in SteveDigital-Dev GitHub |
| xo-modelfiles | `/Users/digital/clawd/xo-modelfiles` | Claudia-local Modelfiles |
| openclaw-Claudia | `/Users/digital/clawd/openclaw-Claudia` | Thin fork, claudia vessel only |
| nexus-2-rebuild | `/Users/digital/clawd/repos/nexus-2-rebuild` | Nexus 2 rebuild specification/workspace |
| claude-octopus | `/Users/digital/clawd/repos/claude-octopus` | Claude Octopus agent/MCP tooling |
| in-between-archive | `/Users/digital/clawd/repos/in-between-archive` | Primary-source correspondence archive |
| vessel-dj | `/Users/digital/clawd/repos/vessel-dj` | DJ vessel profile and docs |
| AetherForge_DJ_Package | `/Users/digital/clawd/repos/AetherForge_DJ_Package` | DJ/AetherForge orchestration package |
| aether-forge | `/Users/digital/clawd/repos/aether-forge` | AI-assisted game asset suite |
| meta-gen | `/Users/digital/clawd/repos/meta-gen` | Natural-language-to-3D scene generation |
| metagen | `/Users/digital/clawd/repos/metagen` | Pixel-art specialist MetaGen agents |
| voicebox | `/Users/digital/clawd/repos/voicebox` | Local-first AI voice studio and voice I/O stack |
| voxel_engine | `/Users/digital/clawd/repos/voxel_engine` | Voxel exploration/game prototype |
| ComfyUI-Agent-Bridge | `/Users/digital/clawd/repos/ComfyUI-Agent-Bridge` | Agent-accessible ComfyUI workflow bridge |
| comfyui-hunyuan3d-colab | `/Users/digital/clawd/repos/comfyui-hunyuan3d-colab` | ComfyUI/Hunyuan3D Colab notebooks |
| circuit_forge | `/Users/digital/clawd/repos/circuit_forge` | ForgeRack Eurorack/circuit design workspace |
| blender-clean-nosmudge | `/Users/digital/clawd/repos/blender-clean-nosmudge` | Blender clean rendering/no-smudge artifact repo |
| agent-game-dev-3d-interactive | `/Users/digital/clawd/repos/agent-game-dev-3d-interactive` | Game development and 3D interactive skills library |
| MGS-UI | `/Users/digital/clawd/repos/MGS-UI` | Project Aether multi-agent tactical UI |
| dungeon_world | `/Users/digital/clawd/repos/dungeon_world` | Three.js dungeon crawler prototype |

## MCP / Third-Party Forks (claudia)

| Repo | Path | Fork target | Branch |
|------|------|-------------|--------|
| blender-mcp | `/Users/digital/Git/blender-mcp` | origin | main |
| comfyui-mcp-server | `/Users/digital/Git/comfyui-mcp-server` | origin | main |
| godot-mcp | `/Users/digital/Git/godot-mcp` | upstream (Coding-Solo) → SteveDigital-Dev fork | `xo/local-deps` |
| godot-mcp | `/Users/digital/clawd/repos/godot-mcp` | upstream (Coding-Solo) → SteveDigital-Dev fork | main |
| UnityNaturalMCP | `/Users/digital/Git/UnityNaturalMCP` | origin | main |
| Unreal_mcp | `/Users/digital/Git/Unreal_mcp` | upstream (ChiR24) → SteveDigital-Dev fork | main |
| Unreal_mcp | `/Users/digital/clawd/repos/Unreal_mcp` | upstream (ChiR24) → SteveDigital-Dev fork | dev |
| ComfyUI-OpenClaw | `/Users/digital/clawd/repos/ComfyUI-OpenClaw` | upstream (rookiestar28) → SteveDigital-Dev fork | main |

Fork protocol: `fleet-ops/FLEET_FORK_PROTOCOL.md`

---

## Sync

```bash
fleet-pull    # Pull all tracked repos, reports updated / up-to-date / errors
```

Script locations:
- Live: `~/bin/fleet-pull`
- Canonical: `fleet-ops/bin/fleet-pull` (keep in sync)

GitHub org: `https://github.com/SteveDigital-Dev/` (132 repos, last synced 2026-07-17)
