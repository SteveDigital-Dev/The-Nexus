# Skill Index - The Nexus

**Last Updated:** 2026-06-06

This is the official skill index for the fleet. All agents, vessels, and CLI tools must register their skills here. The Archivist maintains this index and auto-ingests high-confidence usage data.

## Core Principles
- **Local First**: Where trust is high, prefer local skills and models.
- **Call for Help**: When local confidence is low or the task is beyond current capabilities, agents must call for help via the Archivist or Quorum.
- **Evidence-Based Tracking**: All skills and models must log usage (success rate, frequency, last used, context). The Archivist uses this data for daily LoRAs and periodic fine-tunes.
- **Reporting**: Every agent and vessel must periodically report their onboard projects, repos, and papers to The Nexus. The Archivist parses and ingests this data into the fleet knowledge base.

## Registered Skills

### Core Crew Positions
- **archivist** — Fleet-wide chronicler-secretary and knowledge steward. Parses Quorum conversations, runs verification, auto-ingests high-confidence data, extracts from CLI agent sessions, and supports all nodes. (Permanent position)

### Official Skills
- **cli-anything** — Container for CLI automation, Codex, OpenCode, and terminal-based AI interactions. Official fleet tool for all command-line tasks.
- **systematic-debugging** — 4-phase root cause debugging framework.
- **context-compression** — Reduces context while preserving meaning.
- **planning-with-files** — File-based planning and task decomposition.
- **agent-handoff** — Structured handoff between agents and vessels.
- **system-resource-check** — Monitors CPU, RAM, GPU, storage, and power.
- **call-for-help** — Official protocol for when local trust is low.

### Additional Skills from private-agent-library
(Full list maintained by the Archivist — see `private-agent-library/registry/skills_index.db` (SQLite FTS5) for the complete skill index, and `private-agent-library/capabilities/library-surface/toolboxes.json` for discipline-based toolbox groupings, served via MCP resource `library://toolboxes`)

## Onboard Projects, Repos, and Papers Reporting
All agents and vessels must report:
- Onboard projects and repos (with descriptions and last updated date).
- Relevant papers and research (with links and key findings).
- This data is automatically ingested by the Archivist into the fleet knowledge base and wiki.

**Command to report:** `hermes report onboard` (to be implemented).

## Local-First Policy
- Where trust is high (success rate > 85%, recent usage), prefer local skills and models.
- Only escalate to cloud models when local options are insufficient.
- The Archivist tracks trust scores and advises on local-first decisions.

This index is the single source of truth for skills in the fleet. All new skills must be registered here and follow the Fleet Standard.

The Quorum team uses this index for deliberation and task routing.