# The Nexus — START HERE
**Updated:** 2026-07-19

The Nexus is the central index and control plane for the XO fleet. It does not duplicate data — it points to it.

---

## Navigation

| What you need | Where to go |
|---------------|-------------|
| Fleet vessels (hardware, status, services) | [indexes/VESSELS.md](indexes/VESSELS.md) |
| All git repos | [indexes/REPOS.md](indexes/REPOS.md) |
| Skills & agents catalog | [indexes/SKILLS.md](indexes/SKILLS.md) |
| Running services & ports | [indexes/SERVICES.md](indexes/SERVICES.md) |
| Standards & conventions | [FLEET-STANDARD.md](FLEET-STANDARD.md) |
| Recovered Gemini/Pi coding stack | [indexes/SKILLS.md#coding-cli--local-agent-stack](indexes/SKILLS.md#coding-cli--local-agent-stack) |
| Vision & direction | [VISION.md](VISION.md) |

---

## Fleet at a Glance

**6 vessels** · **8 repos (sdigits/thoth) / 15 (claudia)** · **73 Ollama models on Claudia** · **946-doc RAG (Med Suite)**

| Vessel | Role | Status |
|--------|------|--------|
| [claudia](indexes/VESSELS.md#claudia) | Primary LLM workload / Med Suite host | ✅ active |
| [sdigits](indexes/VESSELS.md#sdigits) | Fleet orchestrator / primary workstation | ✅ active |
| [thoth](indexes/VESSELS.md#thoth) | Captain bridge / control plane / RAG host | ✅ active |
| [nirto5-1](indexes/VESSELS.md#nirto5-1) | GPU workstation / CUDA inference | ✅ active |
| [mintbookpro](indexes/VESSELS.md#mintbookpro) | Academy cadets / Docker host | ✅ active |
| [dj](indexes/VESSELS.md#dj) | GPU workstation (RTX 4070 12GB) / creative production | ✅ active |

---

## Sync the Fleet

```bash
fleet-pull          # Pull this vessel's tracked repos
```

Script: `~/bin/fleet-pull` | Canonical: `fleet-ops/bin/fleet-pull`

---

## Key Entry Points by Task

**Starting a new vessel:** See [FLEET-STANDARD.md](FLEET-STANDARD.md) → Vessel Onboarding  
**Adding a repo:** See [FLEET-STANDARD.md](FLEET-STANDARD.md) → Repo Protocol + update `fleet-pull` + this file  
**Third-party repo conflict:** keep `origin` on upstream; push Steve-local deltas to a preservation branch on the SteveDigital fork remote. See `fleet-ops/FLEET_FORK_PROTOCOL.md`
**Medical queries:** `med serve` → http://127.0.0.1:7755  
**OpenClaw skills:** `openclaw skills list --agent main`
