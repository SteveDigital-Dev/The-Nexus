# Start Here

This repo is the local index layer for Steve Digital's fleet.

## Purpose

Use The Nexus to orient yourself before jumping into a vessel repo.
It is not the execution layer. It points to the repos that already do the work.

## Local root assumptions

- Git root: `D:\GitHub`
- Workspace root: `C:\Users\Steve Digital\.openclaw\workspace`

## Primary local repos

### Core control-plane and execution
- `D:\GitHub\agent-os` — planning/orchestration core direction
- `D:\GitHub\cli-engine` — structured execution, recipes, harnesses, runtime experiments
- `D:\GitHub\studio-fleet` — fleet health, rollcall, bootstrap, status reporting
- `D:\GitHub\fleet-ops` — fleet backend/dashboard/control-plane work
- `D:\GitHub\project-cerberus` — broader orchestration/control work

### Knowledge / skills / discovery
- `D:\GitHub\clihub` — CLI hub / MCP-to-CLI tooling
- `D:\GitHub\openclaw-master-skills` — OpenClaw skills corpus
- `D:\GitHub\skills` — local skills repo
- `D:\GitHub\skills-best-practices` — skills conventions/patterns
- `D:\GitHub\aso-skills` — skills pack
- `D:\GitHub\axton-obsidian-visual-skills` — visual/Obsidian-oriented skills
- `D:\GitHub\threejs-skills` — Three.js-oriented skills

### Experiments / research / R&D
- `D:\GitHub\AI-Scientist`
- `D:\GitHub\autoresearch`
- `D:\GitHub\quorum`

### Creative / generation vessels
- `D:\GitHub\ComfyUI`
- `D:\GitHub\ComfyUI-OpenClaw`
- `D:\GitHub\mesh2motion-app`

### Digital production pipeline
- `D:\GitHub\meta-gen` — multi-DCC generation pipeline: blend-gen (Blender/port 9876 ✅), ue-gen (UE5 in progress), uni-gen (Unity), godogen (Godot)

## Fleet operations

- `fleet-pull.ps1` — pulls all fleet repos in one shot. Run with:
  ```
  powershell -ExecutionPolicy Bypass -File "C:\Users\Steve Digital\.openclaw\workspace\fleet-pull.ps1"
  ```

## Read next

- `VISION.md` — strategic direction
- `docs\LOCAL_REPO_MAP.md` — concrete local repo roles and relationships

## Operating rule

When local docs drift from the actual repos, trust the repo reality first and update The Nexus second.
