# Fleet Services Index
**Updated:** 2026-06-07 | Authoritative detail: `fleet-ops/claudia/system/SERVICES.md`

---

## Claudia (Primary — Apple M4 Mac mini)

### Ports

| Port | Service | Notes |
|------|---------|-------|
| 11434 | Ollama | Local LLM inference — 73 models |
| 7755 | Med Suite | FastAPI dashboard (`med serve`) |
| 8000 | ChromaDB | Vector RAG store (Docker `hub-chroma`) |
| 40001 | Kokoro TTS | Voice synthesis (Docker `kokoro-local`, voice: bf_emma) |
| 18789 | OpenClaw gateway | Telegram bot interface |
| 1234 | LM Studio | Experimental models (manual start) |

### LaunchAgents

| Label | Schedule | Purpose |
|-------|----------|---------|
| `ai.openclaw.gateway` | persistent | OpenClaw Telegram gateway |
| `com.medsuite.daily` | 03:00 | Med Suite RAG refresh + research digest |
| `com.claudia.training-collect` | 03:00 | Training data collection |
| `homebrew.mxcl.pulseaudio` | persistent | Audio bridge |

### Manage

```bash
# OpenClaw
launchctl unload ~/Library/LaunchAgents/ai.openclaw.gateway.plist
launchctl load   ~/Library/LaunchAgents/ai.openclaw.gateway.plist

# Check all
launchctl list | grep -E "openclaw|medsuite|claudia|pulseaudio"

# Docker
docker ps | grep -E "kokoro|chroma"
```

### Ollama

```bash
curl http://127.0.0.1:11434/api/tags | python3 -m json.tool    # List models
```

Models at `/Volumes/DATA/ollama` (342GB external — NOT `~/.ollama/models`)

---

## sdigits

| Service | Notes |
|---------|-------|
| openclaw / clawdbot | Gateway |
| nemoclaw | Telegram sync |
| ollama | Local inference (port 11434) |

---

## thoth

Captain bridge / Hermes gateway / RAG host. See `fleet-ops/thoth/profile.json` for details.

---

## nirto5-1

GPU inference node. RTX 2060, CUDA. Remote Ollama endpoint for heavy models.  
Tailscale: `100.124.34.87:11434`

OpenClaw config for remote: `ollama-remote` provider at `192.168.68.51:11434`

---

## Cross-Fleet Access (Tailscale)

| Vessel | Tailscale IP | Hostname |
|--------|-------------|---------|
| claudia | 100.93.100.37 | stevens-mac-mini |
| sdigits | 100.87.124.62 | sdigits |
| thoth | 100.72.231.127 | thoth |
| nirto5-1 | 100.124.34.87 | nirto5-1 |

---

## OpenClaw Gateway

**Config:** `~/.openclaw/openclaw.json` (NOT `clawdbot.json` — orphan, ignored)  
**Logs:** `/tmp/openclaw/openclaw-YYYY-MM-DD.log`

```bash
tail -20 /tmp/openclaw/openclaw-$(date +%Y-%m-%d).log
```

**Restart:**
```bash
launchctl unload ~/Library/LaunchAgents/ai.openclaw.gateway.plist
launchctl load   ~/Library/LaunchAgents/ai.openclaw.gateway.plist
sleep 3 && tail -5 /tmp/openclaw/openclaw-$(date +%Y-%m-%d).log
```

**FD exhaustion check:**
```bash
lsof -p $(pgrep -f "openclaw.*gateway") | wc -l    # >9000 = problem
```
