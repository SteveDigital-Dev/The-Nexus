# Toolbox System - The Nexus

**Version:** 2.0.0 (Resurrected & Improved)
**Date:** 2026-06-06
**Philosophy:** Take the best of the original toolshed/toolbox concept from HYBRID_ARCHITECTURE.md and make something new for the current Agent OS and fleet.

## Why Resurrect It?
The original toolbox system grouped skills by discipline to reduce noise and improve focus. It got buried as the repo grew to hundreds of skills. This new version is cleaner, fleet-wide, and integrated with the Archivist, Skill Loader, and usage tracking.

## Core Idea
Skills are organized into **Toolboxes** — curated collections by discipline. Agents load specific toolboxes on demand instead of a flat list of all skills.

This creates:
- Focus (load only what you need)
- Discoverability (Atlas/RAG can recommend toolboxes)
- Maintainability (standards per toolbox)
- Usage tracking (per toolbox, not per skill)

## Official Toolboxes (Current)

**Core Crew**
- `archivist` — Knowledge steward, research, verification, auto-ingestion, CLI session extraction.

**System & Infrastructure**
- `system-ops` — Hardware probing, resource monitoring, power management, storage health.
- `network-fleet` — Tailscale, SSH, discovery, routing, census, remote execution.
- `security-hardening` — Auditing, vulnerability scanning, permission gates, firewall rules.
- `storage-backup` — Data lifecycle, backup/restore, RAG maintenance.

**Development & Research**
- `cli-anything` — Official container for CLI automation, Codex, OpenCode, terminal AI.
- `research-pipeline` — Paper analysis, experiment design, Research-to-Skill conversion.
- `code-orchestration` — Planning, debugging, code review, git workflows.
- `ai-scientist` — Autoresearch pipes (kernel, baremetal, eBPF, system introspection).

**Creative & Media**
- `media-pipeline` — ComfyUI, Blender, FFmpeg, Remotion, Unity/Unreal harnesses.
- `writing-synthesis` — Paper writing, documentation, narrative generation.

**Specialized**
- `med-suite` — Medical research, clinical trials, holistic data (from clawd).
- `game-dev` — Godot, Unity, Unreal workflows.

## How It Works
1. **Registration** — New skills must declare their toolbox in SKILL.md frontmatter (`toolbox: system-ops`).
2. **Loading** — Agents load toolboxes via `skill-loader load toolbox:system-ops`.
3. **Discovery** — The Archivist’s Atlas/RAG recommends toolboxes based on task context.
4. **Usage Tracking** — Tracked per toolbox (success rate, frequency, last used). Feeds daily LoRAs.
5. **Standards** — Each toolbox has a manifest with recommended models, risk level, and local-first policy.

## Local-First Rule
- High-trust toolboxes are loaded by default.
- Low-trust or rarely used toolboxes require explicit "call for help" or Quorum approval.

## Integration with The Archivist
- The Archivist maintains the master Toolbox Index.
- It parses CLI agent sessions and Quorum conversations to suggest new toolboxes or updates.
- High-confidence data is auto-ingested into the central wiki with toolbox tagging.

This is the new Toolbox System — cleaner, more focused, and fully integrated with the current Agent OS and fleet.

It replaces the flat Skill Index with a structured, maintainable hierarchy.

---

This is the new, resurrected and improved Toolbox System.

I have cleaned up old archive files (moved buried references to `archive/old-toolbox-concept/` and updated .gitignore to ignore temporary graphify and cache files).

The FLEET-STANDARD.md and SKILL-INDEX.md have been updated to reference this new system.

Would you like me to show you the full updated documents, expand any toolbox manifest, or continue with the next part of the rework?

This feels much cleaner now. Your thoughts, Admiral.