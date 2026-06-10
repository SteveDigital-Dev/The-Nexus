# Fleet Skills Index
**Updated:** 2026-06-07

XO skills live in two places:
- **`~/clawd/skills/`** — Active skills running on Claudia
- **`~/clawd/repos/private-agent-library/`** — Curated skill library (large catalog)

OpenClaw skills registered at: `~/.openclaw/skills/<name>/`

---

## Active Skills (claudia)

| Skill | Path | Status | Purpose |
|-------|------|--------|---------|
| **med-suite** | `~/clawd/skills/med-suite/` | ✅ running | Medical decision support — 3-tier LLM (triage/fast/reasoning), 946-doc RAG, drug interaction checker |
| **agent-omniscience** | `~/clawd/skills/agent-omniscience/` | — | LLM observability — Ollama proxy + semantic search |
| **forca-backend** | `~/clawd/skills/forca-backend/` | — | FastAPI wrapper for ComfyUI / Blender / Unreal MCP |
| **market-data** | `~/clawd/skills/market-data/` | — | Automated stock/crypto collection + pre/post briefs |
| **unified-llm** | `~/clawd/skills/unified-llm/` | — | Router: local (Ollama/LM Studio) ↔ external APIs |
| **mas-tactical** | `~/clawd/skills/mas-tactical/` | — | Agent visibility dashboard |
| **gsd-swarm** | `~/clawd/skills/gsd-swarm/` | — | Multi-agent orchestration |
| **mcp-local-rag** | `~/clawd/skills/mcp-local-rag/` | — | Local RAG via MCP |

**venv rule:** All venvs at `~/clawd/.venvs/<skill-name>/` — never inside `~/clawd/skills/`

---

## OpenClaw Registered Skills

Skills visible to the gateway agent. Two registration steps required (see `FLEET-STANDARD.md`).

```bash
openclaw skills list --agent main    # Show all + blocked status
openclaw skills list --agent main | grep -c blocked    # Count filtered
```

**Med Suite skill:** `~/.openclaw/skills/med-suite/`  
Triggers: drug interaction, NICE, ESC, clinical, prescribing, diagnosis, treatment protocol

**Allowlist:** `agents.defaults.skills` in `~/.openclaw/openclaw.json` (27 utility skills)

---

## Private Agent Library

Large curated catalog at `~/clawd/repos/private-agent-library/`.  
Contains specialist agents across: engineering, finance, security, data, UX, VR/AR, physics, and more.  
Sub-categories: `aa-eng-*`, `aa-spec-*`, `ua-*`, `ec-*`, `gsd-*`, `ouroboros-*`

Browse: `ls ~/clawd/repos/private-agent-library/ | grep <category>`

---

## Med Suite Quick Ref

```bash
med serve                              # Start dashboard :7755
med status                             # RAG counts + model config
curl -s http://127.0.0.1:7755/api/status | python3 -m json.tool

# Key endpoints
POST /api/chat          # Streaming chat with RAG
POST /api/interactions  # Drug interaction checker
POST /api/drug          # Drug reference lookup
GET  /api/status        # Model config + doc counts
```

**RAG collections:** local (759 NICE/NIH PDFs), pubmed (80), drugs (69), trials (20), holistic (18)  
**ChromaDB:** Docker `hub-chroma` on port 8000  
**Daily refresh:** `com.medsuite.daily` launchd at 03:00
