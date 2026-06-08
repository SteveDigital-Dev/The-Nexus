# Fleet Repository Index
**Updated:** 2026-06-08 | Managed by: `~/bin/fleet-pull` + `fleet-ops/bin/fleet-pull`

14 repositories. Sync all with `fleet-pull`.

---

## Core Fleet

| Repo | Local Path | Purpose |
|------|-----------|---------|
| **clawd** | `/Users/digital/clawd` | Workspace root — skills, projects, memory |
| **claudia** | `/Users/digital/clawd/claudia` | Personal assistant stack (voice, routing, training pipeline) |
| **The-Nexus** | `/Users/digital/clawd/The-Nexus` | Central index + control plane (this repo) |
| **fleet-ops** | `/Users/digital/clawd/fleet-ops` | Vessel docs, profiles, protocols, bin scripts |
| **project-cerberus** | `/Users/digital/clawd/project-cerberus` | — |
| **private-agent-library** | `/Users/digital/clawd/repos/private-agent-library` | Curated agent skills library |
| **med-suite** | `/Users/digital/clawd/skills/med-suite` | Local medical decision support (3-tier LLM + 946-doc RAG) |
| **xo-modelfiles** | `/Users/digital/clawd/xo-modelfiles` | Ollama Modelfiles + parameter rationale (REASONING.md) |
| **openclaw-Claudia** | `/Users/digital/clawd/openclaw-Claudia` | Custom openclaw skill additions (thin fork, Claudia vessel only) |

## MCP / Third-Party (forked)

| Repo | Local Path | Remote | Branch | Notes |
|------|-----------|--------|--------|-------|
| **blender-mcp** | `/Users/digital/Git/blender-mcp` | origin | main | Blender MCP server |
| **comfyui-mcp-server** | `/Users/digital/Git/comfyui-mcp-server` | origin | main | ComfyUI MCP server |
| **godot-mcp** | `/Users/digital/Git/godot-mcp` | upstream (Coding-Solo) | main | **Forked** → SteveDigital-Dev; local branch `xo/local-deps` |
| **UnityNaturalMCP** | `/Users/digital/Git/UnityNaturalMCP` | origin | main | Unity MCP server |
| **Unreal_mcp** | `/Users/digital/Git/Unreal_mcp` | upstream (ChiR24) | main | **Forked** → SteveDigital-Dev |

**Fork protocol:** `fleet-ops/FLEET_FORK_PROTOCOL.md`  
**fleet-pull format for forked repos:** `"path:upstream"` — always pulls from original, not fork

---

## GitHub Org

All fleet repos are private under: `https://github.com/SteveDigital-Dev/`

---

## fleet-pull Reference

```bash
fleet-pull    # Pull all 13 repos, reports updated / up-to-date / errors
```

Script locations:
- Live: `~/bin/fleet-pull`
- Canonical: `fleet-ops/bin/fleet-pull` (keep in sync)

When adding a new repo: update BOTH locations, add entry to this file, commit fleet-ops + The-Nexus.
