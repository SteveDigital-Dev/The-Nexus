# Fleet Index

**Last Updated:** 2026-06-10  
**Maintained by:** The Archivist / Aria  
**Source of truth for:** node topology, services, models, and cross-repo links

---

## Node Roster

| Vessel | OS | CPU | RAM | Tailscale IP | Status |
|--------|-----|-----|-----|--------------|--------|
| sdigits | Arch Linux (Omarchy 3.3.3) | Intel i5-8250U (4C/8T) | 7.7 GB | 100.87.124.62 | ONLINE |
| claudia | macOS | Apple M4 | 32 GB unified | 100.93.100.37 | ONLINE |
| thoth | Linux Mint 22.3 | AMD A4-4300M (2C/2T) | 7 GB | 100.72.231.127 | ONLINE |
| nirto5-1 | Windows 11 | Intel i5-9300H (4C/8T) | 24 GB | 100.124.34.87 | ONLINE |
| mintbookpro | Linux Mint 22.3 | Intel i5-3210M (2C/4T) | 15.5 GB | 100.103.62.96 | ONLINE |
| dj | AgentOS-Creative-Layer | virtual | 4 GB | 100.112.235.121 | TAILNET-AUTH-BLOCKED |

---

## Node Details

### sdigits — Primary Workstation / Fleet Orchestrator
- **Device:** Lenovo IdeaPad 330S-15IKB
- **GPU:** Intel UHD 620 (integrated, no acceleration)
- **Role:** Main dev machine, Hermes gateway host, Clawdbot + NemoClaw Telegram bots
- **Services:** Ollama :11434 (33 local + 6 cloud models), Hermes gateway, MCP host (25 servers), RAG host
- **SSH:** `ssh sdigits` / `100.87.124.62`
- **Hermes profile:** local (default)
- **Fleet profile:** `private-agent-library/fleet/sdigits/profile.json`
- **Notable resources:** 620 git repos indexed, 85 papers (100% RAG coverage), 1543 skills

### claudia — M4 Mac Mini / Primary Inference Node
- **Device:** Apple Mac mini (2024)
- **GPU:** Apple M4 integrated / Metal
- **Role:** Heavy inference, remote Ollama, InfraOps model host
- **Services:** Ollama :11434 (InfraOps specialist fleet)
- **SSH:** `ssh claudia` / `100.93.100.37`
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** `private-agent-library/fleet/claudia/system/machine-db.json`
- **InfraOps models hosted:** infraops-fleet, infraops-deploy, infraops-health, infraops-security, infraops-librarian, infraops-orchestrator, infraops-pro, micro-infraops

### thoth — Fleet Control Plane Node
- **Device:** HP mt41 Mobile Thin Client
- **GPU:** AMD Radeon HD 7420G (integrated)
- **Role:** Lightweight control plane, dashboard server, low-power always-on
- **Services:** Dashboard server :8002 (React SPA + FastAPI)
- **SSH:** `ssh thoth` / `100.72.231.127`
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** `private-agent-library/fleet/thoth/system/machine-db.json`
- **Repo:** `fleet-ops/thoth/`

### nirto5-1 — Windows Gaming Node / GPU Compute
- **Device:** Acer Nitro 5 (AN515-54 class)
- **GPU:** NVIDIA RTX 2060 Mobile 6 GB (GPU-accelerated Ollama)
- **Role:** GPU inference, Windows-native workloads, Ollama GPU node
- **Services:** Ollama :11434 (GPU-accelerated)
- **SSH:** `ssh nirto5-1` / `steve@100.124.34.87`
- **Hermes profile:** `hermes -p nirto5-1` (SSH backend, CWD: C:/Users/steve)
- **Fleet profile:** `private-agent-library/fleet/nirto5-1/system/machine-db.json`

### mintbookpro — Secondary Linux Laptop
- **Device:** Apple MacBook Pro 13-inch Mid 2012 (candidate — awaiting DMI confirm)
- **GPU:** Intel HD Graphics 4000
- **Role:** Secondary dev/test node
- **SSH:** `ssh mintbookpro` / `100.103.62.96`
- **Hermes profile:** *(not yet wired)*
- **Fleet profile:** `private-agent-library/fleet/mintbookpro/system/machine-db.json`

### dj — Audio/Mood Synthesis Engine
- **Role:** Podcast automation, audio mastering, mood synthesis
- **Status:** Tailnet auth blocked — services not accessible
- **Fleet profile:** `private-agent-library/fleet/dj/profile.json`

---

## InfraOps Model Fleet (hosted on claudia:11434)

| Model | Domain | Ollama Name |
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

## Key Repos

| Repo | Path | Purpose |
|------|------|---------|
| The-Nexus | `/mnt/DATA/Git/The-Nexus` | Central index, standards, this file |
| private-agent-library | `/mnt/DATA/Git/private-agent-library` | Skills, models, dashboards, fleet profiles, registry |
| fleet-ops | `/mnt/DATA/Git/SteveDigital Projects/fleet-ops` | Per-vessel submodules, fleet.py orchestrator |
| aria-obsidian | `/mnt/DATA/Git/aria-obsidian` | Primary Obsidian knowledge vault |

---

## Dashboards

| Dashboard | URL / Path | Data Feed |
|-----------|-----------|-----------|
| Fleet Command | `private-agent-library/dashboards/fleet-command/` | static JS payload |
| Fleet Code IDE | `private-agent-library/dashboards/fleet-code-ide/index.html` | fetch-poll `data/fleet-code-ide/status.json` (30s) |
| Knowledge Graph 3D | `private-agent-library/dashboards/knowledge-graph-3d/` | static |
| Thoth Dashboard | `http://thoth:8002` | FastAPI + React SPA |

---

## Hermes Profiles

| Profile | Backend | Target | Config |
|---------|---------|--------|--------|
| (default) | local | sdigits | `~/.hermes/config.yaml` |
| nirto5-1 | ssh | 100.124.34.87 (steve) | `~/.hermes/profiles/nirto5-1/` |

Fallback model chain: `infraops-orchestrator` (claudia:11434) → `qwen2.5-coder:7b` (localhost:11434)

---

## Cross-Repo Links

- Fleet node profiles: `private-agent-library/fleet/<vessel>/`
- Fleet standard: `The-Nexus/FLEET-STANDARD.md`
- InfraOps Modelfiles: `private-agent-library/models/`
- Skills registry: `private-agent-library/skills/`
- Agent registry: `private-agent-library/registry/agent_registry.json`
- Quorum plans: `private-agent-library/docs/plans/`
- ADRs: `private-agent-library/docs/adr/`
