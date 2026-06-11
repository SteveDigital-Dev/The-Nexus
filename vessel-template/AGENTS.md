# vessel-template/ — DOX Contract

## Purpose
Canonical starting template for onboarding new vessels into the fleet. Provides the baseline profile structure every vessel must conform to.

## Ownership
Maintained by fleet operators. Updated when the fleet profile schema changes.

## Local Contracts
- `profile.json` — Baseline vessel profile template. Must stay aligned with `fleet-ops/<vessel>/profile.json` schema and `FLEET-STANDARD.md` naming conventions.

## Work Guidance
- When adding a new vessel: copy `profile.json`, fill in vessel-specific fields, commit to `fleet-ops/<vessel>/profile.json`
- When the profile schema changes: update this template first, then migrate existing vessel profiles
- Do not add vessel-specific data here — this is a template only

## Verification
- `profile.json` must be valid JSON
- All required fields per `FLEET-STANDARD.md` must be present with placeholder values

## Child DOX Index
No subdirectories.
