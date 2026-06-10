# Fleet Index

**Last Updated:** 2026-06-10  
**Maintained by:** The Archivist / Aria  
**Purpose:** Topology overview — IPs, roles, models, Hermes profiles, cross-repo links  
**Per-vessel detail:** `indexes/VESSELS.md` · `indexes/SERVICES.md`

---

## Node Roster

| Vessel | OS | CPU | RAM | Tailscale IP | Status |
|--------|-----|-----|-----|--------------|--------|
| sdigits | Arch Linux (Omarchy 3.3.3) | Intel i5-8250U (4C/8T) | 7.7 GB | 100.87.124.62 | ONLINE |
| claudia | macOS 15.x | Apple M4 (10-core) | 32 GB unified | 100.93.100.37 | ONLINE |
| thoth | Linux Mint 22.3 | AMD A4-4300M (2C/2T) | 7.0 GB | 100.72.231.127 | ONLINE |
| nirto5-1 | Windows 11 | Intel i5-9300H (4C/8T) | 24 GB | 100.124.34.87 | ONLINE |
| mintbookpro | Linux Mint 22.3 | Intel i5-3210M (2C/4T) | 15.5 GB | 100.103.62.96 | ONLINE |
| dj | AgentOS-Creative-Layer | virtual | 4 GB | 100.112.235.121 | TAILNET-AUTH-BLOCKED |

---

## Node Roles & Key Services

### sdigits — Primary Workstation / Fleet Orchestrator
- **Device:** Lenovo IdeaPad 330S-15IKB · Intel UHD 620 (no GPU accel)
- **Role:** Main dev machine, Hermes gateway host, Clawdbot + NemoClaw Telegram bots
- **Services:** Ollama :11434 (33 local + 6 cloud), Hermes gateway, MCP host (25 servers), RAG host
- **SSH:** `ssh sdigits` (user: `sdigits`)
- **Hermes profile:** local (default)
- **Fleet profile:** `private-agent-library/fleet/sdigits/profile.json`

### claudia — M4 Mac Mini / Primary Inference Node
- **Device:** Apple Mac mini (2024) · M4 GPU / Metal
- **Role:** Heavy inference, InfraOps model host, Med Suite host, OpenClaw gateway
- **Services:** Ollama :11434 (73 models at `/Volumes/DATA/ollama`), Med Suite :7755, ChromaDB :8000, Kokoro TTS :40001, OpenClaw :18789, LM Studio :1234
- **SSH:** `ssh claudia` (user: `digital`)
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** `private-agent-library/fleet/claudia/system/machine-db.json`
- **Detail:** `indexes/VESSELS.md#claudia` · `indexes/SERVICES.md#claudia`

### thoth — Control Plane / Hermes Gateway
- **Device:** HP mt41 Mobile Thin Client · AMD Radeon HD 7420G
- **Role:** Hermes gateway, RAG/DB host, lightweight always-on control plane
- **Services:** Hermes gateway, ChromaDB :8000, Ollama :11434, Portainer-agent :9001, file-server :8090, Docker
- **SSH:** `ssh thoth` (user: `sdigits`)
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** `private-agent-library/fleet/thoth/system/machine-db.json`

### nirto5-1 — Windows GPU Node
- **Device:** Acer Nitro 5 (AN515-54) · NVIDIA RTX 2060 Mobile 6 GB (CUDA)
- **Role:** GPU inference, Windows-native workloads, remote Ollama CUDA endpoint
- **Services:** Ollama :11434 (GPU-accelerated)
- **SSH:** `ssh nirto5-1` (user: `steve`) · `100.124.34.87`
- **Hermes profile:** `hermes -p nirto5-1` (SSH backend, CWD: `C:/Users/steve`)
- **Fleet profile:** `private-agent-library/fleet/nirto5-1/system/machine-db.json`

### mintbookpro — Research Library Node
- **Device:** MacBook Pro 13" Mid 2012 (candidate) · Intel HD 4000
- **Role:** Research library, large Git catalog (200+ repos), Nextcloud, Eurorack schematics
- **Services:** Ollama :11434 (79 models, CPU), Nextcloud :8080 (Docker), Samba :139/445
- **SSH:** `ssh mintbookpro` (user: `sdigits`) · LAN: `192.168.68.52`
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** `private-agent-library/fleet/mintbookpro/system/machine-db.json`

### dj — Audio/Mood Synthesis Engine
- **Role:** Podcast automation, audio mastering, mood synthesis
- **Status:** Tailnet auth blocked — not accessible
- **Fleet profile:** `private-agent-library/fleet/dj/profile.json`

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
| The-Nexus | `/mnt/DATA/Git/The-Nexus` | Central index, standards, this file |
| private-agent-library | `/mnt/DATA/Git/private-agent-library` | Skills, models, dashboards, fleet profiles, registry |
| fleet-ops | `/mnt/DATA/Git/SteveDigital Projects/fleet-ops` | Per-vessel submodules, fleet.py orchestrator |
| aria-obsidian | `/mnt/DATA/Git/aria-obsidian` | Primary Obsidian knowledge vault |

Full repo catalog: [PROJECT-INDEX.md](PROJECT-INDEX.md)

---

## Dashboards

| Dashboard | Path / URL | Feed |
|-----------|-----------|------|
| Fleet Command | `private-agent-library/dashboards/fleet-command/` | static JS payload |
| Fleet Code IDE | `private-agent-library/dashboards/fleet-code-ide/index.html` | fetch-poll `status.json` (30s) |
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
| dj | — | — | — | — | — |

Detail docs live in `fleet-ops/<vessel>/system/` per FLEET-STANDARD.md.
