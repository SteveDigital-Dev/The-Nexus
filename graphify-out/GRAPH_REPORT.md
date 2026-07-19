# Graph Report - The-Nexus  (2026-07-19)

## Corpus Check
- 35 files · ~51,184 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 707 nodes · 995 edges · 48 communities (31 shown, 17 thin omitted)
- Extraction: 85% EXTRACTED · 14% INFERRED · 0% AMBIGUOUS · INFERRED: 144 edges (avg confidence: 0.62)
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `d52e0309`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- DevOps Tools
- Toolbox Collection
- Unit Tests for AC Compliance Dashboard
- ACTreeWidget Functions
- OpenCLaw Configuration
- Dashboard Variants
- Map and Alert Components
- Agent OS & Orchestration
- Agent OS & Roles
- Selectable ACTree Functions
- DOX Framework
- Grafana Dashboard Structure
- HUD Dashboard Class
- HUDDashboardScreen Methods
- Fleet Forks and Repositories
- DashboardScreenV2 Functions
- LiveActivityBar Methods
- NodeDetailPanel Functions
- NodeSelected Message
- Hardware Metrics
- Identity Information
- Resource Indexes and Skills
- AppState and Context
- DoubleDiamondBar Methods
- Profile JSON Structure
- TestClassifyAC Tests
- System Capabilities
- Custom Models and Protocols
- Network Configuration
- AgentThinkingUpdated Method
- Cost Updated Handler
- Drift Updated Handler
- Execution Updated Handler
- Phase Changed Handler
- ToolCallCompleted Handler
- ToolCallStarted Handler
- Toggle Parallel Graph View
- _convert_ac_list_to_tree Method
- ACUpdated Event
- CostUpdated Event
- ExecutionUpdated Event
- ParallelBatchCompleted Handling
- WorkflowProgressUpdated Event
- SubtaskUpdated Handling
- Med-Suite Tools
- OpenCLaw-Claudia Integration
- XO-Modelfiles

## God Nodes (most connected - your core abstractions)
1. `DashboardScreenV2` - 49 edges
2. `SelectableACTree` - 36 edges
3. `HUDDashboardScreen` - 31 edges
4. `DoubleDiamondBar` - 26 edges
5. `NodeDetailPanel` - 26 edges
6. `DashboardScreenV3` - 24 edges
7. `NodeSelected` - 22 edges
8. `LiveActivityBar` - 22 edges
9. `Dashboards DOX Contract` - 22 edges
10. `DOX Framework` - 17 edges

## Surprising Connections (you probably didn't know these)
- `e2b-dashboard.png — Dashboard screenshot/diagram (unreadable)` --semantically_similar_to--> `Dashboards DOX Contract`  [AMBIGUOUS] [semantically similar]
  dashboards/e2b-dashboard.png → dashboards/AGENTS.md
- `Archivist Toolbox` --semantically_similar_to--> `The Archivist`  [INFERRED] [semantically similar]
  TOOLBOX-SYSTEM.md → VISION.md
- `Usage Tracking` --semantically_similar_to--> `Usage Tracking`  [INFERRED] [semantically similar]
  TOOLBOX-SYSTEM.md → VISION.md
- `Atlas RAG` --semantically_similar_to--> `RAG Atlas`  [INFERRED] [semantically similar]
  TOOLBOX-SYSTEM.md → VISION.md
- `Quorum` --semantically_similar_to--> `Quorum`  [INFERRED] [semantically similar]
  TOOLBOX-SYSTEM.md → VISION.md

## Import Cycles
- None detected.

## Communities (48 total, 17 thin omitted)

### Community 0 - "DevOps Tools"
Cohesion: 0.05
Nodes (44): aria-obsidian, ChromaDB (claudia), ChromaDB (thoth), claudia, dj, Docker (thoth), File Server, Fleet Code IDE (+36 more)

### Community 1 - "Toolbox Collection"
Cohesion: 0.05
Nodes (44): AI Scientist Toolbox, Archivist Toolbox, Atlas RAG, CLI Anything Toolbox, CLI Session Extraction, Code Orchestration Toolbox, Core Crew Toolboxes, Creative & Media Toolboxes (+36 more)

### Community 2 - "Unit Tests for AC Compliance Dashboard"
Cohesion: 0.08
Nodes (24): ACResult, _ac_result(), _eval_summary(), _generation(), _lineage_with_gens(), Unit tests for AC Compliance Dashboard., Tests for _trend_dots., Tests for format_summary. (+16 more)

### Community 3 - "ACTreeWidget Functions"
Cohesion: 0.07
Nodes (29): ACTreeWidget, ActivityBar, CommandBar, EnhancedACTree, MiniCostIndicator, MiniDriftIndicator, MiniPhaseIndicator, MiniStatusIndicator (+21 more)

### Community 4 - "OpenCLaw Configuration"
Cohesion: 0.06
Nodes (35): ~/.openclaw/openclaw.json, ChromaDB, Claudia (Apple M4 Mac mini), Clawdbot (Telegram bot), Dashboard (FastAPI + React SPA), File Server, Hermes Gateway, Kokoro TTS (+27 more)

### Community 5 - "Dashboard Variants"
Cohesion: 0.08
Nodes (34): dashboard-hud.js (JavaScript Browser HUD), dashboard.py (Python v1 Reference), dashboard.rs (Rust High-Performance), dashboard_v2.py (Python v2 Extended), dashboard_v3.py (Python v3 Latest), Dashboards DOX Contract, e2b-dashboard.png (E2B Layout Reference Image), Fleet Data (Shared Data Source) (+26 more)

### Community 6 - "Map and Alert Components"
Cohesion: 0.09
Nodes (29): addCircleZone() Function, addRectZone() Function, Alert Data Structure, Active Alerts Panel, createEvent() Function, Create Event Modal, Disaster Types Enum, Header Component (+21 more)

### Community 7 - "Agent OS & Orchestration"
Cohesion: 0.08
Nodes (30): Agent OS & Orchestration, Agent OS Concept, agent-os Repository, aria-obsidian Repository, Audio, Media & Creative, AutoGPT Repository, CLI Agent Frameworks & Configs, Coding & Software Development Agents (+22 more)

### Community 8 - "Agent OS & Roles"
Cohesion: 0.10
Nodes (23): Agent OS, Arbiter (Cerberus role), Cerberus Deliberation, clawd/skills/market-data, cli-anything skill, Fleet Standard, hermes kanban, Official Kanban Workflow (+15 more)

### Community 9 - "Selectable ACTree Functions"
Cohesion: 0.08
Nodes (38): DoubleDiamondBar, LiveActivityBar, NodeDetailPanel, NodeSelected, Any, ComposeResult, Static, TUIState (+30 more)

### Community 10 - "DOX Framework"
Cohesion: 0.10
Nodes (13): Child Doc Shape, Child DOX Index, Closeout Process, Core Contract, DOX Framework, Hierarchy Rules, Read Before Editing Process, Style Guidelines (+5 more)

### Community 11 - "Grafana Dashboard Structure"
Cohesion: 0.13
Nodes (14): Current State, Estimated Effort, Goal, Plan: DOX Tree — private-agent-library, Success Criteria, T1 — Root AGENTS.md, T2 — `skills/` child AGENTS.md, T3 — `models/` child AGENTS.md (+6 more)

### Community 13 - "HUDDashboardScreen Methods"
Cohesion: 0.05
Nodes (20): Handle workflow progress update message., HUDDashboardScreen, HUD Dashboard - Enhanced dashboard with orchestration visibility.  Extends Dashb, Initialize HUD dashboard.          Args:             state: Initial TUI state., Update HUD row visibility based on state., Handle node selection from tree., Handle execution updates - forward to HUD components., Handle phase changes. (+12 more)

### Community 14 - "Fleet Forks and Repositories"
Cohesion: 0.21
Nodes (15): FLEET_FORK_PROTOCOL.md, SteveDigital-Dev GitHub org, agent-os, aria-obsidian, blender-mcp, comfyui-mcp-server, fleet-ops, godot-mcp (+7 more)

### Community 15 - "DashboardScreenV2 Functions"
Cohesion: 0.13
Nodes (6): DashboardScreenV3, DriftUpdated, ParallelBatchStarted, PhaseChanged, Simplified dashboard with Double Diamond status and AC Tree.      Features:, Handle node selection from tree.

### Community 16 - "LiveActivityBar Methods"
Cohesion: 0.14
Nodes (13): Creative/runtime repos in scope, Current local auto-rigging candidate, Current runtime experiment anchor, Digital production pipeline, Fleet repos in scope, Fleet tooling, Local Repo Map, Maintenance rule (+5 more)

### Community 17 - "NodeDetailPanel Functions"
Cohesion: 0.15
Nodes (12): Current State, Estimated Effort, Goal, Plan: DOX Tree — agent-os, Success Criteria, T1 — Root AGENTS.md, T2 — `core/` child AGENTS.md, T3 — `implementation/` child AGENTS.md (+4 more)

### Community 18 - "NodeSelected Message"
Cohesion: 0.15
Nodes (12): Core control-plane and execution, Creative / generation vessels, Digital production pipeline, Experiments / research / R&D, Fleet operations, Knowledge / skills / discovery, Local root assumptions, Operating rule (+4 more)

### Community 19 - "Hardware Metrics"
Cohesion: 0.17
Nodes (11): Current State, Estimated Effort, Goal, Plan: DOX Tree — project-cerberus, Success Criteria, T1 — Root AGENTS.md, T2 — `backend/` child AGENTS.md, T3 — `frontend/` child AGENTS.md (+3 more)

### Community 20 - "Identity Information"
Cohesion: 0.18
Nodes (10): Current State, Estimated Effort, Goal, Plan: DOX Tree — fleet-ops, Success Criteria, T1 — Root AGENTS.md, T2 — `bin/` child AGENTS.md, T3 — Per-vessel child AGENTS.md (one template, applied to each) (+2 more)

### Community 21 - "Resource Indexes and Skills"
Cohesion: 0.18
Nodes (10): Current State, Estimated Effort, Goal, Plan: DOX Tree — quorum, Success Criteria, T1 — Root AGENTS.md, T2 — `backend/` child AGENTS.md, T3 — `frontend/` child AGENTS.md (+2 more)

### Community 22 - "AppState and Context"
Cohesion: 0.33
Nodes (8): AppState, Context, build_dashboard_tab(), create_dial_gauge(), Any, render(), render_detail(), Figure

### Community 23 - "DoubleDiamondBar Methods"
Cohesion: 0.20
Nodes (9): Adding a New Vessel, claudia, dj, Fleet Vessel Index, Index Coverage Status, mintbookpro, nirto5-1, sdigits (+1 more)

### Community 24 - "Profile JSON Structure"
Cohesion: 0.25
Nodes (6): Fleet topology (for context), Governing contract: DOX / AGENTS.md, Navigation map (don't duplicate — link instead), Other directories, What this repo is, Working conventions

### Community 25 - "TestClassifyAC Tests"
Cohesion: 0.25
Nodes (3): Tests for _classify_ac., Need >= 2 results for stable., TestClassifyAC

### Community 26 - "System Capabilities"
Cohesion: 0.25
Nodes (7): Active Skills (claudia), Coding CLI / Local Agent Stack, Fleet Skills Index, InfraOps Model Fleet (claudia:11434), Med Suite Quick Ref, OpenClaw Registered Skills, Private Agent Library

### Community 27 - "Custom Models and Protocols"
Cohesion: 0.40
Nodes (3): ACUpdated, Update a single node's status., Handle AC update message.

### Community 28 - "Network Configuration"
Cohesion: 0.40
Nodes (4): Fleet Protocol — Index-Map Context Discipline, Reference implementation, Rules, The three index layers

### Community 30 - "AgentThinkingUpdated Method"
Cohesion: 0.40
Nodes (3): AgentThinkingUpdated, Update thinking text display., Handle agent thinking - update detail panel if selected.

### Community 44 - "Toggle Parallel Graph View"
Cohesion: 0.14
Nodes (9): DashboardScreenV2, ParallelBatchCompleted, Tree-centric dashboard for monitoring AC execution.      Features:     - Large,, Handle parallel batch completed message., Handle resume action., Toggle parallel graph view., Switch to logs screen., Switch to debug screen. (+1 more)

## Ambiguous Edges - Review These
- `Infrastructure, DevOps & Systems` → `relay Repository`  [AMBIGUOUS]
  PROJECT-INDEX.md · relation: conceptually_related_to
- `AutoGPT Repository` → `Agent OS Concept`  [AMBIGUOUS]
  PROJECT-INDEX.md · relation: conceptually_related_to
- `Dashboards DOX Contract` → `e2b-dashboard.png — Dashboard screenshot/diagram (unreadable)`  [AMBIGUOUS]
  dashboards/e2b-dashboard.png · relation: semantically_similar_to
- `index.html (Static HTML File:// Compatible)` → `The Nexus • Fleet Dashboards Index`  [AMBIGUOUS]
  dashboards/AGENTS.md · relation: semantically_similar_to

## Knowledge Gaps
- **239 isolated node(s):** `What this repo is`, `Governing contract: DOX / AGENTS.md`, `Navigation map (don't duplicate — link instead)`, `Fleet topology (for context)`, `Other directories` (+234 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **17 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `Infrastructure, DevOps & Systems` and `relay Repository`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **What is the exact relationship between `AutoGPT Repository` and `Agent OS Concept`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **What is the exact relationship between `Dashboards DOX Contract` and `e2b-dashboard.png — Dashboard screenshot/diagram (unreadable)`?**
  _Edge tagged AMBIGUOUS (relation: semantically_similar_to) - confidence is low._
- **What is the exact relationship between `index.html (Static HTML File:// Compatible)` and `The Nexus • Fleet Dashboards Index`?**
  _Edge tagged AMBIGUOUS (relation: semantically_similar_to) - confidence is low._
- **Why does `DashboardScreenV2` connect `Toggle Parallel Graph View` to `ACTreeWidget Functions`, `Selectable ACTree Functions`, `HUD Dashboard Class`, `DashboardScreenV2 Functions`, `Custom Models and Protocols`, `AgentThinkingUpdated Method`, `Cost Updated Handler`, `Drift Updated Handler`, `Execution Updated Handler`, `Phase Changed Handler`, `ToolCallCompleted Handler`, `ToolCallStarted Handler`, `_convert_ac_list_to_tree Method`, `ACUpdated Event`, `CostUpdated Event`, `ExecutionUpdated Event`, `ParallelBatchCompleted Handling`, `WorkflowProgressUpdated Event`, `SubtaskUpdated Handling`?**
  _High betweenness centrality (0.074) - this node is a cross-community bridge._
- **Why does `HUDDashboardScreen` connect `HUDDashboardScreen Methods` to `Selectable ACTree Functions`?**
  _High betweenness centrality (0.027) - this node is a cross-community bridge._
- **Why does `SelectableACTree` connect `Selectable ACTree Functions` to `ACUpdated Event`, `HUDDashboardScreen Methods`?**
  _High betweenness centrality (0.022) - this node is a cross-community bridge._