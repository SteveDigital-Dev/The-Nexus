# The Nexus

Central title, index, and knowledge hub for the fleet and Agent OS.

## Navigation

| Document | Purpose |
|----------|---------|
| [FLEET-INDEX.md](FLEET-INDEX.md) | Node roster, IPs, roles, models, Hermes profiles — topology overview |
| [PROJECT-INDEX.md](PROJECT-INDEX.md) | Full categorized project/repo list (~140 repos) |
| [FLEET-STANDARD.md](FLEET-STANDARD.md) | Naming conventions, vessel index rules, Kanban, onboarding |
| [VISION.md](VISION.md) | Direction, Agent OS philosophy, Archivist role |
| [START-HERE.md](START-HERE.md) | Onboarding entry point for new vessels/agents |
| [docs/RECOVERY-ONBOARDING.md](docs/RECOVERY-ONBOARDING.md) | Recovered repos, papers, programs, and source evidence to onboard |

### Per-Vessel & Service Detail (`indexes/`)

| File | Purpose |
|------|---------|
| [indexes/VESSELS.md](indexes/VESSELS.md) | Per-vessel hardware, services, SSH, coverage status |
| [indexes/SERVICES.md](indexes/SERVICES.md) | Port maps, LaunchAgents, restart commands per node |
| [indexes/SKILLS.md](indexes/SKILLS.md) | Active skills, InfraOps model fleet, private-agent-library |
| [indexes/REPOS.md](indexes/REPOS.md) | Core fleet repos with per-vessel paths, fleet-pull reference |

## Quick Reference

- **Fleet nodes:** 6 vessels on Tailscale mesh — see [FLEET-INDEX.md](FLEET-INDEX.md)
- **Primary inference:** claudia (M4, 100.93.100.37:11434) — InfraOps model fleet
- **Orchestrator:** Hermes on sdigits, profile `nirto5-1` for Windows GPU node
- **Skills/models/dashboards:** `private-agent-library/`
- **Per-vessel submodules:** `fleet-ops/`
- **Recovered source anchors:** see [docs/RECOVERY-ONBOARDING.md](docs/RECOVERY-ONBOARDING.md)
