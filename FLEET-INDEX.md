# Fleet Index

**Last Updated:** 2026-07-21
**Maintained by:** The Archivist / Aria  
**Purpose:** Topology overview — IPs, roles, models, Hermes profiles, cross-repo links  
**Per-vessel detail:** `indexes/VESSELS.md` · `indexes/SERVICES.md`

---

## Node Roster

| Vessel | OS | CPU | RAM | Tailscale IP | Status |
|--------|-----|-----|-----|--------------|--------|
| sdigits | Arch Linux (Omarchy 3.3.3) | Intel i5-8250U (4C/8T) | 7.7 GB | 100.87.124.62 | ONLINE |
| claudia | macOS 26.5 | Apple M4 (10-core) | 32 GB unified | 100.93.100.37 | ONLINE |
| thoth | Linux Mint 22.3 | AMD A4-4300M (2C/2T) | 7.0 GB | 100.72.231.127 | ONLINE |
| nirto5-1 | Windows 11 | Intel i5-9300H (4C/8T) | 24 GB | 100.124.34.87 | ONLINE |
| mintbookpro | Linux Mint 22.3 | Intel i5-3210M (2C/4T) | 15.5 GB | 100.103.62.96 | ONLINE |
| dj | Windows 10 Pro (19045) | AMD Ryzen 5 2600X (6C/12T) | 32 GB | 100.112.235.121 | ONLINE |

---

## Node Roles & Key Services

### sdigits — Primary Workstation / Fleet Orchestrator
- **Device:** Lenovo IdeaPad 330S-15IKB · Intel UHD 620 (no GPU accel)
- **Role:** Main dev machine, Hermes gateway host, Clawdbot + NemoClaw Telegram bots
- **Services:** Ollama :11434 (33 local + 6 cloud), Hermes gateway, MCP host (25 servers), RAG host
- **SSH:** `ssh sdigits` (user: `sdigits`)
- **Hermes profile:** local (default)
- **Fleet profile:** `vessel-sdigits/profile.json`

### claudia — M4 Mac Mini / Primary Inference Node
- **Device:** Apple Mac mini (2024) · M4 GPU / Metal
- **Role:** Heavy inference, InfraOps model host, Med Suite host, OpenClaw gateway
- **Services:** Ollama :11434 (73 models at `/Volumes/DATA/ollama`), Med Suite :7755, ChromaDB :8000, Kokoro TTS :40001, OpenClaw :18789, LM Studio :1234
- **SSH:** `ssh claudia` (user: `digital`)
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** `vessel-claudia/profile.json`
- **Detail:** `indexes/VESSELS.md#claudia` · `indexes/SERVICES.md#claudia`

### thoth — Control Plane / Hermes Gateway
- **Device:** HP mt41 Mobile Thin Client · AMD Radeon HD 7420G
- **Role:** Hermes gateway, RAG/DB host, lightweight always-on control plane
- **Services:** Hermes gateway, Coms-Net :8888, ChromaDB :8000, Ollama :11434, Portainer-agent :9001, file-server :8090, Docker
- **SSH:** `ssh thoth` (user: `sdigits`)
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** `vessel-thoth/profile.json`

### nirto5-1 — Windows GPU Node
- **Device:** Acer Nitro 5 (AN515-54) · NVIDIA RTX 2060 Mobile 6 GB (CUDA)
- **Role:** GPU inference, Windows-native workloads, remote Ollama CUDA endpoint
- **Services:** Ollama :11434 (GPU-accelerated)
- **SSH:** `ssh nirto5-1` (user: `steve`) · `100.124.34.87`
- **Hermes profile:** `hermes -p nirto5-1` (SSH backend, CWD: `C:/Users/steve`)
- **Fleet profile:** `vessel-nirto5-1/profile.json`

### mintbookpro — Research Library Node
- **Device:** MacBook Pro 13" Mid 2012 (candidate) · Intel HD 4000
- **Role:** Research library, large Git catalog (200+ repos), Nextcloud, Eurorack schematics
- **Services:** Ollama :11434 (79 models, CPU), Nextcloud :8080 (Docker), Samba :139/445
- **SSH:** `ssh mintbookpro` (user: `sdigits`) · LAN: `192.168.68.52`
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** `vessel-mintbookpro/profile.json`

### dj — GPU Workstation / Creative Production Node
- **Device:** Custom desktop · AMD Ryzen 5 2600X · **NVIDIA RTX 4070 12 GB** (strongest GPU in fleet) · 32 GB RAM · 5.6 TB DATA drive
- **Role:** Image/3D generation, game-engine work (UE 5.4/5.5, Godot 4.6, Blender 4.2), local LLM inference, KIWIX offline library host
- **Services:** Ollama :11434 (5 local + 9 cloud, `X:\AI\Ollama Models`), SwarmUI :7801, ComfyUI Desktop :8000 (on demand), SSH :22, RDP :3389, Docker (MCP sandboxes)
- **SSH:** `ssh dj` (user: `St3v3`) · `100.112.235.121`
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** [`vessel-dj`](https://github.com/SteveDigital-Dev/vessel-dj) (`profile.json` v2.0.0 + `system/` docs — first vessel repo on GitHub) · mirror: `fleet-ops/dj/`
- **Note:** Rebuilt 2026 — formerly a 4 GB virtual "audio/mood" node; surveyed on-vessel 2026-07-02. ⚠️ C: drive nearly full (14 GB free).

---

## InfraOps Model Fleet (claudia:11434)

| Model | Domain | Ollama name |
|-------|---------|-------------|
| infraops-orchestrator | Meta-router + Cerberus deliberation | `infraops-orchestrator` |
| infraops-fleet | Multi-node SSH/Tailscale ops | `infraops-fleet` |
| infraops-deploy | Deployments, git, rollouts | `infraops-deploy` |
| infraops-health | Monitoring, alerts, diagnostics | `infraops-health` |
| infraops-security | Scanning, auditing, hardening | `infraops-security` |
| infraops-librarian | Knowledge, RAG, Obsidian, registry | `infraops-librarian` |
| infraops-pro | General infra + tool use | `infraops-pro` |
| micro-infraops | Fast lightweight queries | `micro-infraops` |

Modelfiles: `private-agent-library/models/infraops-*/Modelfile`  
Skills: `private-agent-library/skills/infraops-*-model/SKILL.md`

---

## Hermes Profiles (on sdigits)

| Profile | Backend | Target | Notes |
|---------|---------|--------|-------|
| (default) | local | sdigits | `~/.hermes/config.yaml` |
| nirto5-1 | ssh | 100.124.34.87 (steve) | `~/.hermes/profiles/nirto5-1/` |

**Fallback model chain:** `infraops-orchestrator` (claudia:11434) → `qwen2.5-coder:7b` (localhost:11434)

---

## Key Repos

| Repo | Path (sdigits) | Purpose |
|------|----------------|---------|
| The-Nexus | `/mnt/DATA/Git/The-Nexus` | Central index, standards, vessel docs |
| private-agent-library | `/mnt/DATA/Git/private-agent-library` | Skills, models, dashboards, fleet profiles, registry |
| vessel-sdigits | `/mnt/DATA/Git/vessel-sdigits` | sdigits vessel repo |
| vessel-thoth | `/mnt/DATA/Git/vessel-thoth` | thoth vessel repo |
| vessel-claudia | `/mnt/DATA/Git/vessel-claudia` | claudia vessel repo |
| vessel-nirto5-1 | `/mnt/DATA/Git/vessel-nirto5-1` | nirto5-1 vessel repo |
| vessel-mintbookpro | `/mnt/DATA/Git/vessel-mintbookpro` | mintbookpro vessel repo |
| vessel-dj | `/mnt/DATA/Git/vessel-dj` | dj vessel repo |
| aria-obsidian | `/mnt/DATA/Git/aria-obsidian` | Primary Obsidian knowledge vault |

Full repo catalog: [PROJECT-INDEX.md](PROJECT-INDEX.md)

---

## Dashboards

| Dashboard | Path / URL | Feed |
|-----------|-----------|------|
| Fleet Command | `private-agent-library/dashboards/fleet-command/` | static JS payload |
| Fleet Code IDE | `private-agent-library/dashboards/fleet-code-ide/index.html` | fetch-poll `status.json` (30s) |
| Coms-Net docs | `http://thoth:8090/fleet/comms/` | PAL fleet comms docs; API health at `http://thoth:8888/health` |
| Knowledge Graph 3D | `private-agent-library/dashboards/knowledge-graph-3d/` | static |
| Thoth Dashboard | `http://thoth:8002` | FastAPI + React SPA |

---

## Vessel Index Coverage

| Vessel | PROJECTS | REPOS | PAPERS | SERVICES | Hermes profile |
|--------|----------|-------|--------|----------|----------------|
| claudia | ✅ | ✅ | ✅ | ✅ | ❌ not wired |
| sdigits | ✅ | ✅ | ✅ | ✅ | ✅ default |
| thoth | ✅ | ✅ | ✅ | ✅ | ❌ not wired |
| nirto5-1 | ❌ | ❌ | ❌ | ❌ | ✅ wired |
| mintbookpro | ✅ | ✅ | ✅ | ✅ | ❌ not wired |
| dj | ✅ | ❌ | ❌ | ✅ | ❌ not wired |

Detail docs live in `fleet-ops/<vessel>/system/` per FLEET-STANDARD.md.

---

## Repository Coverage (DOX + Graphify)

> Generated: 2026-06-18 · 134 repos (after symlink dedup)  
> DOX coverage: 134/134 (100%) ✓  
> Graphify coverage: 129/134 (96%)

- DOX ✓ — AGENTS.md present at repo root
- Graph ✓ — graphify-out/graph.json built

### SteveDigital Projects

| Repo | Last Commit | DOX | Graph |
|------|-------------|-----|-------|
| 00-master-index | 7 days ago | ✓ | ✓ |
| BH | 7 days ago | ✓ | ✓ |
| Centaur-Beta | 7 days ago | ✓ | ✓ |
| ClawTeam-OpenClaw | 7 days ago | ✓ | ✓ |
| CoLT5-Evolved | 7 days ago | ✓ | ✓ |
| ComfyUI-Agent-Bridge | 7 days ago | ✓ | ✓ |
| Euro-Pi | 7 days ago | ✓ | ✓ |
| HarmonySystem | 7 days ago | ✓ | ✓ |
| MGS-UI | 7 days ago | ✓ | ✓ |
| Omni-Fabric-Optimizer | 7 days ago | ✓ | ✓ |
| OpenClaw-CyberDeck | 7 days ago | ✓ | ✓ |
| SteveDigital-Dev | 7 days ago | ✓ | ✗ |
| TinyTroupe | 7 days ago | ✓ | ✓ |
| Vibe-Void | 5 months ago | ✓ | ✓ |
| aether-forge | 7 days ago | ✓ | ✓ |
| agent-academy | 7 days ago | ✓ | ✓ |
| agent-assistant | 7 days ago | ✓ | ✓ |
| agent-coding-software-dev | 7 days ago | ✓ | ✓ |
| agent-comms-marketing-seo | 7 days ago | ✓ | ✓ |
| agent-finance-market-business | 7 days ago | ✓ | ✓ |
| agent-game-dev-3d-interactive | 7 days ago | ✓ | ✓ |
| agent-hardware-electronics-diy | 7 days ago | ✓ | ✓ |
| agent-health-med-wellness | 7 days ago | ✓ | ✓ |
| agent-infrastructure | 7 days ago | ✓ | ✓ |
| agent-knowledge-base | 7 days ago | ✓ | ✓ |
| agent-meta-os-governance | 7 days ago | ✓ | ✓ |
| agent-ml-research-rag | 7 days ago | ✓ | ✓ |
| agent-multimedia-audio-music | 7 days ago | ✓ | ✓ |
| agent-os | 7 days ago | ✓ | ✓ |
| agent-science-physics-math | 7 days ago | ✓ | ✓ |
| agent-security-safety-audit | 7 days ago | ✓ | ✓ |
| agent-senior-standards | 7 days ago | ✓ | ✓ |
| agent-skill-hunter | 7 days ago | ✓ | ✓ |
| agent-sysadmin-os-infra | 7 days ago | ✓ | ✓ |
| agent-visual-video-gen | 7 days ago | ✓ | ✓ |
| agentflow-studio | 7 days ago | ✓ | ✓ |
| ai-agent-tester | 7 days ago | ✓ | ✓ |
| ancient-tomes | 7 days ago | ✓ | ✓ |
| art-design-ux-architect | 7 days ago | ✓ | ✓ |
| auto-doc-generator | 7 days ago | ✓ | ✓ |
| awesome-openclaw-skills | 7 days ago | ✓ | ✓ |
| black-rock | 7 days ago | ✓ | ✓ |
| blender-clean-nosmudge | 7 days ago | ✓ | ✓ |
| bolt.diy | 7 days ago | ✓ | ✓ |
| cipher-obsidian | 5 weeks ago | ✓ | ✓ |
| circuit_forge | 7 days ago | ✓ | ✓ |
| claude-code | 7 days ago | ✓ | ✓ |
| claude-obsidian | 5 weeks ago | ✓ | ✓ |
| claude-octopus | 5 weeks ago | ✓ | ✓ |
| clawd | 7 days ago | ✓ | ✓ |
| clawd-products | 7 days ago | ✓ | ✓ |
| cli-engine | 7 days ago | ✓ | ✓ |
| cmd-claude-flow-swarm | 7 days ago | ✓ | ✓ |
| codex-lenovo-config | 7 days ago | ✓ | ✓ |
| comfyui-hunyuan3d-colab | 7 days ago | ✓ | ✓ |
| content-automation | 7 days ago | ✓ | ✓ |
| devops-cli-bundle | 7 days ago | ✓ | ✓ |
| dungeon_world | 7 days ago | ✓ | ✓ |
| exp-mlx_autoresearch_loop | 7 days ago | ✓ | ✓ |
| exp-research-openfang | 7 days ago | ✓ | ✓ |
| fleet-ops | 7 days ago | ✓ | ✓ |
| fleetcode | 7 days ago | ✓ | ✓ |
| gemini-cli | 7 days ago | ✓ | ✓ |
| gemini-cli-agent | 7 days ago | ✓ | ✓ |
| gemini-obsidian | 9 weeks ago | ✓ | ✓ |
| harmony-turboquant | 7 days ago | ✓ | ✓ |
| hawk-obsidian | 7 days ago | ✓ | ✓ |
| homunculus | 7 days ago | ✓ | ✓ |
| kimi-cli | 5 weeks ago | ✓ | ✓ |
| lenovo-bytebot | 7 days ago | ✓ | ✓ |
| lenovo-chatdev | 7 days ago | ✓ | ✓ |
| lenovo-framework | 7 days ago | ✓ | ✗ |
| local-deep-researcher | 7 days ago | ✓ | ✓ |
| micro-saas-starter | 7 days ago | ✓ | ✓ |
| oh-my-openagent | 5 weeks ago | ✓ | ✓ |
| openclaw-foundry | 7 days ago | ✓ | ✓ |
| openclaw-main | 7 days ago | ✓ | ✓ |
| orch-agents-orchestrator | 7 days ago | ✓ | ✓ |
| outside-the-box | 7 days ago | ✓ | ✓ |
| photoshop-clone | 4 months ago | ✓ | ✓ |
| physics-team | 7 days ago | ✓ | ✓ |
| pi-lenovo-config | 7 days ago | ✓ | ✓ |
| private-agent-library | 6 days ago | ✓ | ✓ |
| project-cerberus | 7 days ago | ✓ | ✓ |
| quorum | 7 days ago | ✓ | ✓ |
| qwen-code | 5 weeks ago | ✓ | ✓ |
| qwen-lenovo-config | 7 days ago | ✓ | ✓ |
| ralph | 5 weeks ago | ✓ | ✓ |
| rook | 7 days ago | ✓ | ✓ |
| sdigits-dotfiles | 7 days ago | ✓ | ✓ |
| slack-bot-starter | 7 days ago | ✓ | ✓ |
| soprano | 7 days ago | ✓ | ✓ |
| stash | 7 days ago | ✓ | ✓ |
| studio-fleet | 7 days ago | ✓ | ✓ |
| team-mika | 7 days ago | ✓ | ✓ |
| the-grid | 5 months ago | ✓ | ✓ |
| thoth-framework | 7 days ago | ✓ | ✓ |
| tool-tracker | 7 days ago | ✓ | ✓ |
| touchpad-ui-lenovo | 7 days ago | ✓ | ✓ |
| vibe-lenovo-config | 7 days ago | ✓ | ✓ |
| voice-pipeline-lenovo | 7 days ago | ✓ | ✓ |
| worldmonitor | 7 days ago | ✓ | ✓ |

### Top-Level (/mnt/DATA/Git/)

| Repo | Last Commit | DOX | Graph |
|------|-------------|-----|-------|
| AutoGPT | 4 weeks ago | ✓ | ✓ |
| The-Nexus | 4 days ago | ✓ | ✓ |
| agent-vaults | 6 days ago | ✓ | ✓ |
| aria-obsidian | 3 weeks ago | ✓ | ✓ |
| claude-code | 4 weeks ago | ✓ | ✗ |
| claude-mem | 4 weeks ago | ✓ | ✓ |
| claude-obsidian | 8 weeks ago | ✓ | ✓ |
| claude-octopus | 4 weeks ago | ✓ | ✓ |
| claw-code-parity | 2 months ago | ✓ | ✓ |
| dox | 6 days ago | ✓ | ✓ |
| everything-claude-code | 4 weeks ago | ✓ | ✓ |
| kicad-source | 4 weeks ago | ✓ | ✗ |
| lenovo-z | 5 weeks ago | ✓ | ✗ |
| mcp-server-docker | 5 weeks ago | ✓ | ✓ |
| open-claude-cowork | 7 weeks ago | ✓ | ✓ |
| ouroboros | 4 weeks ago | ✓ | ✓ |
| portless | 4 weeks ago | ✓ | ✓ |
| private-agent-library | 35 hours ago | ✓ | ✓ |
| qmd | 7 days ago | ✓ | ✓ |
| ralph | 5 months ago | ✓ | ✓ |
| relay | 4 weeks ago | ✓ | ✓ |
| seomachine | 10 weeks ago | ✓ | ✓ |
| superpowers | 6 weeks ago | ✓ | ✓ |
| task-orchestrator | 4 weeks ago | ✓ | ✓ |
| threejs-skills | 5 months ago | ✓ | ✓ |
| vessel-claudia | 7 days ago | ✓ | ✓ |
| vessel-clauds | 7 days ago | ✓ | ✓ |
| vessel-dj | 7 days ago | ✓ | ✓ |
| vessel-mintbookpro | 7 days ago | ✓ | ✓ |
| vessel-nirto5-1 | 7 days ago | ✓ | ✓ |
| vessel-sdigits | 7 days ago | ✓ | ✓ |
| vessel-thoth | 7 days ago | ✓ | ✓ |

### Graph Gaps

- **SteveDigital-Dev** — needs graphify run
- **lenovo-framework** — hardware config, low priority
- **claude-code** (top-level mirror) — external upstream, skip
- **kicad-source** — large EDA source, skip
- **lenovo-z** — intentional skip (11k+ file aggregation folder)
