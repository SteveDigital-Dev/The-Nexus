# Fleet Vessel Index
**Updated:** 2026-06-10 | Source of truth: `fleet-ops/<vessel>/profile.json`  
**Topology overview:** [FLEET-INDEX.md](../FLEET-INDEX.md)

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
**Status:** ✅ active — SSH established 2026-06-08

| Field | Value |
|-------|-------|
| Hostname | `sdigits` |
| Tailscale | `sdigits` · `100.87.124.62` |
| OS | Arch Linux (kernel 6.19.13-arch1-1) |
| CPU | Intel Core i5-8250U (4C/8T) @ 1.60GHz |
| RAM | 7.7 GiB |
| Storage | 475 GB root (53% full — 224 GB free) |
| SSH user | `sdigits` |
| Ollama models | 14 (localhost:11434 only) |

**Services:** openclaw/clawdbot (localhost:18789), ollama (localhost:11434), docker (containers exited), ssh (:22)  
**System docs:** `fleet-ops/sdigits/system/` → PROJECTS.md · REPOS.md · SERVICES.md · OLLAMA_MODELS.md · STORAGE.md

---

## thoth

**Profile:** `fleet-ops/thoth/profile.json` (v1.3.0)  
**Role:** Captain bridge / control plane / Hermes gateway / RAG and DB host.  
**Status:** ✅ active — SSH established 2026-06-08

| Field | Value |
|-------|-------|
| Hostname | `Thoth` |
| Tailscale | `thoth` · `100.72.231.127` |
| OS | Linux Mint 22.3 (Zena), kernel 6.8.0-117 |
| CPU | AMD A4-4300M APU (2C/2T) |
| RAM | 7.0 GiB (tight — ~742 MB free at survey) |
| Storage | 439 GB root (45%) + `/mnt/DATA` (unsurveyed) |
| SSH user | `sdigits` |

**Services:** hermes gateway (active), chromadb (localhost:8000), ollama (localhost:11434), portainer-agent (:9001), file-server (:8090), docker  
**System docs:** `fleet-ops/thoth/system/` → PROJECTS.md · REPOS.md · SERVICES.md · OLLAMA_MODELS.md · STORAGE.md

---

## nirto5-1

**Profile:** `fleet-ops/nirto5-1/profile.json` (v1.1.0)  
**Role:** GPU workstation / large local model endpoint. RTX 2060 for CUDA inference.  
**Status:** ✅ active — SSH established 2026-06-10

| Field | Value |
|-------|-------|
| Hostname | `Nirto5-1` |
| Tailscale | `nirto5-1` · `100.124.34.87` |
| OS | Windows 11 |
| CPU | Intel Core i5-9300H (4C/8T) |
| GPU | NVIDIA GeForce RTX 2060 Mobile (6GB GDDR6, CUDA) |
| RAM | 24 GB |
| SSH user | `steve` |
| Shell | PowerShell / CMD |
| Hermes profile | `hermes -p nirto5-1` (SSH backend, CWD: `C:/Users/steve`) |

**Services:** Ollama :11434 (GPU-accelerated, CUDA)  
**System docs:** `fleet-ops/nirto5-1/system/` → ❌ not yet created (PROJECTS, REPOS, SERVICES missing)

---

## mintbookpro

**Profile:** `fleet-ops/mintbookpro/profile.json` (v1.0.0)  
**Role:** Research library node. Large Git catalog (200+ repos), Nextcloud, Eurorack schematics. Crew plan: `fleet-ops/mintbookpro/CREW_PLAN.md`  
**Status:** ✅ active — SSH via Tailscale established 2026-06-08

| Field | Value |
|-------|-------|
| Hostname | `MintBookPro` |
| Tailscale | `mintbookpro` · `100.103.62.96` · LAN `192.168.68.52` |
| OS | Linux Mint 22.3 (Zena), kernel 6.8.0-124 |
| CPU | Intel Core i5-3210M (2C/4T) @ 2.50GHz |
| RAM | 15.5 GiB |
| Storage | 938 GB root (85% full — 136 GB free) |
| SSH user | `sdigits` |
| Ollama models | 79 (localhost:11434 only, CPU inference) |

**Services:** ollama (localhost:11434), nextcloud (Docker :8080), samba (139/445), tailscaled  
**System docs:** `fleet-ops/mintbookpro/system/` → PROJECTS.md · REPOS.md · SERVICES.md · OLLAMA_MODELS.md · STORAGE.md

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
| claudia | ✅ `system/PROJECTS.md` | ✅ `system/REPOS.md` | ✅ `system/PAPERS.md` | ✅ `system/SERVICES.md` |
| sdigits | ✅ `system/PROJECTS.md` | ✅ `system/REPOS.md` | ✅ `system/PAPERS.md` | ✅ `system/SERVICES.md` |
| thoth | ✅ `system/PROJECTS.md` | ✅ `system/REPOS.md` | ✅ `system/PAPERS.md` | ✅ `system/SERVICES.md` |
| nirto5-1 | ❌ missing | ❌ missing | ❌ missing | ❌ missing |
| mintbookpro | ✅ `system/PROJECTS.md` | ✅ `system/REPOS.md` | ✅ `system/PAPERS.md` | ✅ `system/SERVICES.md` |

See `FLEET-STANDARD.md` → Vessel Index Requirement for the format.

---

## Adding a New Vessel

1. Create `fleet-ops/<vessel>/profile.json` from `fleet-ops/profile-schema.json`
2. Add entry to this file
3. Add vessel to `START-HERE.md` fleet table
4. Commit fleet-ops + The-Nexus
