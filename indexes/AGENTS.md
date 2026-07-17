# indexes/ — DOX Contract

## Purpose
Read-only reference indexes for the fleet. These files point to authoritative sources — they do not duplicate data.

## Ownership
Maintained by The Archivist and fleet operators. Updated when vessel hardware, services, skills, or repos change.

## Local Contracts
- `VESSELS.md` — Per-vessel hardware, services, SSH, and coverage status. Source of truth: `fleet-ops/<vessel>/profile.json`
- `SERVICES.md` — Port maps, LaunchAgents, and restart commands per node
- `SKILLS.md` — Active skills, InfraOps model fleet, private-agent-library catalog
- `REPOS.md` — Core fleet repos with per-vessel paths and fleet-pull reference

## Work Guidance
- Update the relevant index file when vessel hardware, services, or repo paths change
- Do not store primary data here — always link to the authoritative source
- Keep tables sorted and consistent in format with existing entries
- Update the `Updated:` datestamp at the top of the file on every meaningful change

## Verification
- All vessel entries in `VESSELS.md` must have a corresponding `fleet-ops/<vessel>/profile.json`
- Port numbers in `SERVICES.md` must not conflict across vessels

## Child DOX Index
No subdirectories — all index files live flat in this directory.
