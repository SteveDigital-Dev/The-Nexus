# Fleet Protocol — Index-Map Context Discipline

**Status:** adopted on claudia 2026-07-18 · candidate fleet standard
**Why:** agent context is capital. Fact-dump CLAUDE.md files rot, bloat every
session, and lose adherence past ~200 lines. The fleet already maintains
layered indexes — agents should navigate them instead of carrying facts.

## The three index layers

1. **DOX contracts** — every repo (and major subdir) carries `AGENTS.md`:
   purpose, local rules, Child DOX Index. Read the node before working in the
   tree. Coverage tracked in FLEET-INDEX.md §Repository Coverage.
2. **Graphify graphs** — `graphify-out/graph.json` per repo where built; the
   fastest structural map of large corpora (AgentOS graph: 154k nodes; Aria's
   vault: 10.6k). Query the graph before walking the tree.
3. **Machine CLAUDE.md as index map** — the per-machine global CLAUDE.md
   contains ONLY: vessel identity, the DOX rule, a "question → index" routing
   table, and standing rules that fit no index. Every displaced fact moves to
   its canonical home (`fleet-ops/<vessel>/system/*.md`, vessel repo docs, or
   the wiki) and gets a pointer.

## Rules

- A fact may live in exactly ONE canonical place; everything else points.
- New subdir or component → update the parent `AGENTS.md` Child DOX Index
  (the DOX contract already requires this).
- Machine CLAUDE.md target: ≤60 lines. If a line isn't routing or a standing
  rule, it belongs in an index.
- Session knowledge goes to the vessel's wiki/vault (hot → index → pages),
  never accumulated in CLAUDE.md.
- Un-indexed roots get a DOX node before heavy use (claudia examples:
  `~/clawd/AGENTS.md` extended, `/Volumes/DATA/GitHub/AGENTS.md` created,
  2026-07-18).

## Reference implementation

claudia's `~/CLAUDE.md` (2026-07-18) — 45 lines: identity, DOX rule, 7-row
routing table, standing rules. Displaced facts landed in
`fleet-ops/claudia/system/SHELL_ENV.md` (new) alongside the existing
SERVICES/OLLAMA_MODELS/STORAGE docs.
