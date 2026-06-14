# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

The-Nexus is a **documentation-only repo** — the central index, navigation hub, and standards document for a multi-vessel AI agent fleet ("the fleet"). There is no application code, build, lint, or test suite here. The "product" is Markdown: indexes, standards, plans, and a few static dashboards.

## Governing contract: DOX / AGENTS.md

This repo runs under the **DOX framework** defined in `AGENTS.md` (root). It is binding:

- `AGENTS.md` files are work contracts for their subtree. Before editing any file, read the root `AGENTS.md`, then walk the path to your target reading every `AGENTS.md` along the way (root → child → ...).
- Closer docs control local detail; parent docs set repo-wide rules. No child doc may weaken DOX.
- After any meaningful edit, do a **DOX pass**: update the nearest owning `AGENTS.md` if purpose/scope/contracts/index contents changed, refresh affected Child DOX Indexes, and remove stale text.
- Current children with their own `AGENTS.md`: `indexes/`, `dashboards/`, `vessel-template/`, `graphify-out/`.

Read `AGENTS.md` in full before making structural changes — it has the complete hierarchy rules, child doc shape, and closeout checklist.

## Navigation map (don't duplicate — link instead)

Root docs and their roles:

- `README.md` — top-level navigation table
- `START-HERE.md` — onboarding entry point (fleet at a glance, sync command, key entry points by task)
- `FLEET-INDEX.md` — node roster, topology, InfraOps model fleet, Hermes profiles
- `FLEET-STANDARD.md` — naming conventions, Kanban workflow, usage-tracking requirements, onboarding rules
- `PROJECT-INDEX.md` — full categorized catalog of ~140 repos
- `SKILL-INDEX.md` — registered skills catalog
- `TOOLBOX-SYSTEM.md` — toolbox grouping system for skills
- `VISION.md` — direction/philosophy (Agent OS, Archivist role)

Per-vessel/service detail lives in `indexes/` (read-only reference, sourced from `fleet-ops/<vessel>/profile.json` — never duplicate primary data here, link to it):

- `indexes/VESSELS.md`, `indexes/SERVICES.md`, `indexes/SKILLS.md`, `indexes/REPOS.md`

## Fleet topology (for context)

6 vessels on a Tailscale mesh: `sdigits` (orchestrator, this machine), `claudia` (M4 Mac, primary inference + InfraOps models), `thoth` (control plane/RAG), `nirto5-1` (Windows GPU/CUDA), `mintbookpro` (research library), `dj` (offline). Full detail in `FLEET-INDEX.md` and `indexes/VESSELS.md`.

Sync all fleet repos with `fleet-pull` (canonical script at `fleet-ops/bin/fleet-pull`).

## Other directories

- `graphify-out/` — **auto-generated** knowledge graph (graph.html, graph.json, GRAPH_REPORT.md). Never hand-edit; regenerate via graphify against the repo root.
- `dashboards/` — multiple fleet-visibility UI implementations (Python, Rust, JS, static HTML, Grafana) that all consume the same fleet data. Static HTML dashboards must work over `file://`; never hardcode IPs (use Tailscale MagicDNS).
- `vessel-template/` — canonical `profile.json` template for onboarding new vessels.
- `docs/plans/` — DOX initialization plans for other fleet repos.

## Working conventions

- Keep Markdown Obsidian-friendly: clear headings, bullets over tables where platform compatibility matters, wikilinks where useful.
- Indexes point to authoritative sources; don't copy primary data into The-Nexus.
- Update the `Updated:`/`Last Updated:` datestamp at the top of a file on every meaningful change.
- Make surgical edits — don't reformat unrelated sections or churn tables already in a consistent format.
