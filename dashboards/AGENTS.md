# dashboards/ — DOX Contract

## Purpose
Fleet visibility UIs. Multiple implementations targeting different runtimes and use cases — all consume the same underlying fleet data.

## Ownership
Maintained by fleet operators and The Archivist. New dashboard versions are addicted as `dashboard_vN.py` or language-named variants.

## Local Contracts
| File | Runtime | Status |
|------|---------|--------|
| `dashboard.py` | Python (v1) | Reference implementation |
| `dashboard_v2.py` | Python (v2) | Extended version |
| `dashboard_v3.py` | Python (v3) | Latest Python iteration |
| `hud_dashboard.py` | Python HUD | Heads-up display variant |
| `test_dashboard.py` | Python test harness | For validating dashboard logic |
| `dashboard.rs` | Rust | High-performance variant |
| `dashboard-hud.js` | JavaScript | Browser HUD |
| `index.html` | Static HTML | File:// compatible fleet view |
| `mat-dashboard.html` | Static HTML | Material-style variant |
| `grafana-dashboard.json` | Grafana | Metrics/observability overlay |
| `e2b-dashboard.png` | Reference image | E2B layout reference |

## Work Guidance
- New dashboard versions use suffix `_vN` (Python) or descriptive name for other runtimes
- Static HTML dashboards must work over `file://` without CORS friction — use `window.*` data wrappers for JS payloads
- Do not hardcode IPs — use Tailscale MagicDNS hostnames or fleet data sources
- All dashboards consume fleet data; do not embed static vessel data directly in dashboard code

## Verification
- Static HTML dashboards must open correctly via `file://` in a browser
- Python dashboards must import without error

## Child DOX Index
No subdirectories.
