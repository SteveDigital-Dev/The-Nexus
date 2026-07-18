# Local Repo Map

This document makes The Nexus locally usable by pointing to the repos that already exist on this machine.

## Split-brain map

### Planning / routing / memory side
- `D:\GitHub\agent-os`
- `D:\GitHub\quorum`
- `D:\GitHub\studio-fleet`
- `D:\GitHub\fleet-ops`

### Structured execution side
- `D:\GitHub\cli-engine`
  - recipes
  - harnesses
  - runtime experiments
  - WSL/LXT bakeoff work

## Skills DB and adjacent knowledge sources

Treat these as the current local skills / capability corpus:

- `D:\GitHub\openclaw-master-skills`
- `D:\GitHub\skills`
- `D:\GitHub\skills-best-practices`
- `D:\GitHub\aso-skills`
- `D:\GitHub\axton-obsidian-visual-skills`
- `D:\GitHub\threejs-skills`
- `D:\GitHub\clihub`

Notes:
- some of these may be sparse, experimental, or missing pieces
- `clihub` is adjacent infrastructure rather than a pure skill library, but it belongs in discovery/tooling context
- local availability should be rechecked before assuming any repo is present or clean

## Fleet repos in scope

- `D:\GitHub\studio-fleet`
- `D:\GitHub\fleet-ops`
- `D:\GitHub\project-cerberus`
- `D:\GitHub\agent-os`
- `D:\GitHub\AI-Scientist`
- `D:\GitHub\autoresearch`
- `D:\GitHub\cli-engine`

## Creative/runtime repos in scope

- `D:\GitHub\ComfyUI`
- `D:\GitHub\ComfyUI-OpenClaw`
- `D:\GitHub\mesh2motion-app`

## Digital production pipeline

- `D:\GitHub\meta-gen` — multi-DCC generation pipeline hub
  - `blend-gen` — Blender integration via blender-mcp socket server (port 9876) ✅ working
  - `ue-gen` — UE5 integration via Python Remote Execution (UDP 6766) 🔧 in progress
  - `uni-gen` — Unity integration (planned)
  - `godogen` — Godot integration (planned)
  - UE5 project: `D:\Unreal Projects\MyProject` (UE 5.5, RemoteControl + PythonScriptPlugin enabled)

## Fleet tooling

- `fleet-pull.ps1` (Nexus root) — pulls all fleet repos in one shot

## Current local auto-rigging candidate

Best current candidate:
- `D:\GitHub\mesh2motion-app`

Current evidence suggests it is closer to Mixamo-like assisted skeleton fitting + animation assignment than a fully proven one-click auto-rigger. Keep that distinction explicit until verified.

## Current runtime experiment anchor

WSL / Docker / Podman runtime comparisons currently anchor in:
- `D:\GitHub\cli-engine`
  - see WSL/LXT docs and runtime benchmark artifacts there

## Maintenance rule

If a repo is renamed, moved, missing, or superseded, update this file and `docs\START_HERE.md` together.
