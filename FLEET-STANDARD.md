# Fleet Standard

**Last Updated:** 2026-06-05

This is the official Fleet Standard for all vessels, team members, CLI agents, and the Agent OS. It lives in The Nexus as the single source of truth.

## 1. Repo Structure
- **The Nexus** (`/mnt/DATA/Git/The-Nexus`) — Central title, index, standards, Archivist RAG, and master wiki.
- **Per-Vessel Repos** — Each vessel has its own git repo (`vessel-claudia`, `vessel-thoth`, etc.).
- **private-agent-library** — Shared skills, core Agent OS, Quorum logic, and the Archivist.

All changes must be committed to the appropriate repo. The Archivist tracks usage and auto-ingests high-confidence updates into the central wiki.

## 2. Official Kanban Workflow
The Kanban workflow is now **official** and lives in The Nexus.

**Rules:**
- All major work must be tracked in the Kanban board (`hermes kanban`).
- Tasks are claimed atomically.
- Use Cerberus deliberation (Scientist, Poet, Arbiter) for complex decisions.
- The Archivist parses every Quorum conversation into the Project RAG and auto-ingests high-confidence outcomes.
- Usage is tracked in registry.db (success rate, frequency, last used).

**Access:** `hermes kanban list` or open the dashboard.

## 3. Official CLI-Anything Skill
The `cli-anything` skill is now an official fleet tool.

It serves as the container for CLI automation, Codex, OpenCode, and terminal-based AI interactions.

**Usage:**
- Route CLI, terminal, or code-execution tasks to `cli-anything`.
- It integrates with the Skill Loader and Run Protocol.
- All usage is tracked by The Archivist.

**Location:** `agent-os/skills/cli-anything/` and `clawd/skills/market-data/` (for cron components).

## 4. Usage Tracking (Mandatory)
Every skill, tool, model, experiment, and Quorum decision must log:
- Timestamp
- Success/failure
- Duration
- Confidence
- Context summary

This data feeds the Archivist’s RAG, daily LoRAs, and fine-tunes.

## 5. Onboarding / Start Here
New vessels, team members, or CLI agents must:
1. Register in The Nexus (see START-HERE.md).
2. Follow the Fleet Standard.
3. Use the Archivist for research and knowledge navigation.
4. Contribute changes via per-vessel repos or the central Nexus.

See `START-HERE.md` for registration and navigation instructions.

---

This document makes the Kanban workflow and `cli-anything` skill official. It lives in The Nexus as part of the Fleet Standard.

I have pushed the changes to The-Nexus repository.

The Quorum team has been updated with this official standard.

Would you like me to expand the START-HERE.md with registration instructions, or continue with the next piece of the rework?
---

## 6. Index-Map Context Discipline

Agent context is finite. Vessels and agents follow the index-map protocol:
DOX `AGENTS.md` contracts per repo, graphify graphs where built, and
per-machine CLAUDE.md files that are routing maps (≤60 lines), not fact dumps.
Every fact lives in exactly one canonical index; everything else points.

Full protocol: [docs/INDEX-MAP-PROTOCOL.md](docs/INDEX-MAP-PROTOCOL.md).
Reference implementation: vessel claudia (2026-07-18).
