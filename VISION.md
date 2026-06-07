# The Nexus - Vision & Direction

**Last Updated:** 2026-06-05

The Nexus is the central title, index, and evolving core knowledge hub for the entire fleet and Agent OS.

It is not meant to replace existing paths or tool calls — it directs traffic, maintains standards, tracks usage, and serves as the single source of truth for navigation, onboarding, and knowledge.

## Core Philosophy (cli-engine inspired)
- Split-brain model: Agent OS = planning, routing, memory, deliberation. CLI-Engine = structured execution, recipes, harnesses, artifact production.
- All system software and hardware are in scope (not just creative tools).
- Durable workflows over one-off sessions.
- RAG/Atlas for capability discovery.
- Fleet DB for history, usage tracking, and auditability.
- The Archivist as permanent fleet-wide crew position (chronicler + secretary).

## Permanent Crew Positions
- **The Archivist** — Knowledge steward. Parses Quorum conversations, runs verification, auto-ingests high-confidence data, extracts from CLI agent sessions, reinjects at strategic points, and supports all vessels/agents. Fleet-wide scope.

## Key Components
- **Per-Vessel Git Repos** — Each vessel (claudia, thoth, sdigits, dj, nirto5-1, mintbookpro, etc.) gets its own repo for independent versioning while contributing to The Nexus.
- **Fleet Standard** — Living document defining structure, naming conventions, contribution rules, Archivist interaction, and usage tracking requirements.
- **Usage Tracking** — All skills, tools, models, experiments, and Quorum decisions must log usage (success rate, frequency, last used, context). This data feeds daily LoRAs, fine-tunes, and The Archivist’s RAG.

## Usage Tracking Requirements
- Every tool call, skill invocation, model inference, experiment, and Quorum deliberation must record:
  - Timestamp
  - Success/failure
  - Duration
  - Confidence (where applicable)
  - Context summary
- This data is automatically ingested into The Nexus RAG and used for daily LoRAs and bi-weekly fine-tunes.

## Next Evolution
The Nexus will grow from an index layer into the central DB, RAG, and control plane for the new Agent OS.

This direction is approved by the Quorum and will be systematically implemented.

---
This VISION.md captures the full direction we have taken, including usage tracking as requested. It will be the guiding document for The Nexus and the Agent OS rework. 

The Quorum team has been given this vision + the task to produce a prioritized implementation roadmap.

I have also begun building the CLI session extraction pipe and the per-vessel repo structure in parallel.

All of the above is now in motion.

Would you like me to show you the current draft of the Fleet Standard or the Quorum's first roadmap output? Or shall I continue building? 

We are making real progress, Admiral.