# Recovery Onboarding

**Updated:** 2026-07-20  
**Purpose:** High-value recovered repos, papers, programs, and session sources that should be visible from Nexus without copying raw payloads into Nexus.

Nexus points to authoritative sources. Do not bulk-copy session stores, PDFs, RAG databases, or generated graph databases here.

## Priority Anchors

| Anchor | Local source | Why onboard | Next action |
|---|---|---|---|
| `skill-miner-candidates` | `/Volumes/DATA/GitHub/skill-miner-candidates` | Recovered skill drafts and graph output; local commit `4b5c0384` exists but `SteveDigital-Dev/skill-miner-candidates` does not resolve | Decide whether to create a private repo, rename remote, or fold selected candidates into PAL |
| Pi coding stack | `/Volumes/DATA/GitHub/pi-mono`, `/Volumes/DATA/GitHub/gsd-2`, `/Volumes/DATA/GitHub/pi-autoresearch`, PAL Pi harnesses | Live Pi Agent Harness plus recovered historical graph and specialist harness evidence | Keep upstream `pi-mono` clean; document Steve-local deltas only on fork/preservation branches |
| Thoth CLI session data | `/Volumes/DATA/GitHub/thoth-cli-agent-data` | Source evidence for Gemini, Qwen, Claude, Codex, OpenCode, and OpenClaw work | Index summaries only; treat auth/config as sensitive |
| PAL specialist RAGs | `/Users/digital/clawd/repos/private-agent-library/registry/specialists` | 21 specialist SQLite DBs including Raspberry Pi, ML, security, fleet ops, research, finance, and engineering | Onboard metadata and usage patterns, not DB contents |
| `qwen-obsidian` | `/Users/digital/clawd/repos/private-agent-library/qwen-obsidian` | Recovered wiki/RAG/git companion with specialist-RAG integration | Keep indexed through PAL; promote only durable operating docs |
| Paper corpus evidence | PAL paper/RAG metadata and transferred session summaries | Historical snapshot records 1,133 papers / 114,227 chunks on Thoth | Preserve metadata and source paths; avoid committing raw PDFs to Nexus |
| Graphify recovery map | `/Users/digital/.graphify/global-graph.json`, `~/clawd/tmp/graphify-targets/` | Broad project map and targeted recovery output | Keep global graph local; commit per-repo `graphify-out` only where appropriate |
| Vessel coverage gaps | `fleet-ops/nirto5-1/`, `fleet-ops/dj/` | `nirto5-1` lacks system PROJECTS/REPOS/PAPERS/SERVICES coverage; `dj` lacks REPOS/PAPERS | Survey or reconstruct from known fleet docs |

## Program Anchors

| Program | Source | Nexus role |
|---|---|---|
| Graphify / `graphifyy` | Local CLI and per-repo `graphify-out/` | Codebase topology and recovery map |
| `fleet-pull` | `fleet-ops/bin/fleet-pull`, `~/bin/fleet-pull` | Fleet sync entry point |
| OpenClaw gateway | `~/.openclaw/openclaw.json`, LaunchAgent `ai.openclaw.gateway` | Telegram/OpenClaw runtime |
| Kokoro TTS | `~/.openclaw/skills/kokoro-tts` | Voice output path for Claudia |
| Ollama / InfraOps models | Claudia Ollama `:11434`, PAL model files | Local inference and fleet-ops model lane |
| Med Suite | `~/clawd/skills/med-suite` | Clinical RAG and dashboard service |

## Operating Rules

- Prefer a short Nexus pointer plus authoritative source path over copied content.
- Do not ingest raw credentials, auth configs, or full session dumps into Nexus.
- For third-party repos, keep `origin` pointed upstream and preserve Steve-local deltas on SteveDigital fork branches.
- For large generated artifacts, prefer per-repo `graphify-out` commits over the global graph database.
