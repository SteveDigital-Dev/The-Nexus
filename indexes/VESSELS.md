# Fleet Vessel Index
**Updated:** 2026-06-07 | Source of truth: `fleet-ops/<vessel>/profile.json`

---

## claudia

**Profile:** `fleet-ops/claudia/profile.json` (v1.4.0)  
**Role:** Primary LLM workload machine. Apple M4 + Metal for heavy local inference. Med Suite host.  
**Status:** ✅ active

| Field | Value |
|-------|-------|
| Hostname | `Stevens-Mac-mini-2.local` |
| Tailscale | `stevens-mac-mini` · `100.93.100.37` |
| OS | macOS 15.x (Darwin) |
| CPU | Apple M4 (ARM64, 10-core 8P+2E) |
| GPU | Apple M4 GPU (10-core, integrated, Metal) — 25GB unified memory |
| Storage | Internal 228GB (~94% full) · External DATA 1.8TB (640GB free) |
| Ollama models | 73 total (stored at `/Volumes/DATA/ollama`) |
| Active stack | XO_Gemma_31B primary → Claude Haiku tier-2 → ollama-remote tier-3 |

**Services:** openclaw (18789), ollama (11434), kokoro-tts Docker (40001), chromadb Docker (8000), med-suite (7755), lm_studio (1234), pulseaudio  
**LaunchAgents:** `ai.openclaw.gateway`, `com.medsuite.daily`, `com.claudia.training-collect`, `homebrew.mxcl.pulseaudio`  
**System docs:** `fleet-ops/claudia/system/` → [OLLAMA_MODELS.md](../fleet-ops/claudia/system/OLLAMA_MODELS.md) · [STORAGE.md](../fleet-ops/claudia/system/STORAGE.md) · [SERVICES.md](../fleet-ops/claudia/system/SERVICES.md)

---

## sdigits

**Profile:** `fleet-ops/sdigits/profile.json` (v1.4.1)  
**Role:** Primary workstation, fleet orchestrator. Active substitute for academy operations (MintBookPro offline).  
**Status:** ✅ active

| Field | Value |
|-------|-------|
| Hostname | `sdigits` |
| Tailscale | `sdigits` · `100.87.124.62` |
| CPU | Intel Core i5-8250U (4C/8T) @ 1.60GHz |
| GPU | Intel UHD Graphics 620 (integrated) |

**Services:** clawdbot/openclaw, nemoclaw, ollama  
**Key scripts:** `scripts/deploy_locals.py`, `scripts/fine_tooth_comb.py`, `scripts/update_rag.py`, `scripts/sync_sessions.py`, `scripts/sync_vessels.py`

---

## thoth

**Profile:** `fleet-ops/thoth/profile.json` (v1.3.0)  
**Role:** Captain bridge / control plane / Hermes gateway / RAG and DB host. Best-stocked machine for papers in the fleet.  
**Status:** ✅ active

| Field | Value |
|-------|-------|
| Hostname | `thoth` |
| Tailscale | `thoth` · `100.72.231.127` |
| CPU | AMD A4-4300M APU (2C/2T) |
| GPU | AMD Radeon HD 7420G (display only) |

---

## nirto5-1

**Profile:** `fleet-ops/nirto5-1/profile.json` (v1.1.0)  
**Role:** GPU workstation / large local model endpoint. RTX 2060 for CUDA inference.  
**Status:** ✅ active

| Field | Value |
|-------|-------|
| Hostname | `nirto5-1` |
| Tailscale | `nirto5-1` · `100.124.34.87` |
| CPU | Intel Core i5-9300H (4C/8T) |
| GPU | NVIDIA GeForce RTX 2060 (6GB GDDR6, CUDA) |

---

## mintbookpro

**Profile:** `fleet-ops/mintbookpro/profile.json` (v1.0.0)  
**Role:** Academy cadets host. Docker-based cadet environment. Crew plan: `fleet-ops/mintbookpro/CREW_PLAN.md`  
**Status:** ✅ active (cadets offline — sdigits substituting)

| Field | Value |
|-------|-------|
| CPU | Intel Core i5-3210M (2C/4T) @ 2.50GHz |
| GPU | Intel HD Graphics 4000 (Ivy Bridge, integrated) |

**Services:** docker, open_webui, xyops, clawdbot_gateway, nemoclaw_telegram, nemoclaw_sync

---

## dj

**Profile:** `fleet-ops/dj/profile.json` (v1.0.0)  
**Role:** Virtual node  
**Status:** ⚪ offline

---

---

## Index Coverage Status

| Vessel | PROJECTS.md | REPOS.md | PAPERS.md | SERVICES.md |
|--------|------------|---------|----------|------------|
| claudia | — | — | — | ✅ `system/SERVICES.md` |
| sdigits | ❌ missing | ❌ missing | ❌ missing | ❌ missing |
| thoth | ❌ missing | ❌ missing | ❌ missing | ❌ missing |
| nirto5-1 | ❌ missing | ❌ missing | ❌ missing | ❌ missing |
| mintbookpro | ❌ missing | ❌ missing | ❌ missing | ❌ missing |

See `FLEET-STANDARD.md` → Vessel Index Requirement for the format.

---

## Adding a New Vessel

1. Create `fleet-ops/<vessel>/profile.json` from `fleet-ops/profile-schema.json`
2. Add entry to this file
3. Add vessel to `START-HERE.md` fleet table
4. Commit fleet-ops + The-Nexus
