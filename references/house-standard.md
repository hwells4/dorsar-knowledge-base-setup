# Dorsar standard

What to propose when the interview answered "we do not have this yet". One item at a time, in Bill's words, created only on approval. Existing files stay where they are; Arch, the analyst's email routine, and the Word notes are untouched.

## The one required item

Two things in SharePoint, outside the skill, in the library all three people can see:

- `AI Outputs/`: where the AI saves its work by default. Work that has an existing home in SharePoint (an investment report beside the other investment reports) is saved there instead. Named `YYYY-MM-DD investment what period` (example: `2026-09-18 blackrock-re-fund-iv quarterly-review 2026-Q2.docx`). Never overwritten; a revision is a new dated file.
- `AI Outputs/Index/index.md`: the ledger. Every piece the AI makes, wherever it was saved, gets one line: date, what, where it lives, sources, draft or approved. The index is the seed of the wiki: it grows one line per output and is what a future wiki compiles from.

And one skill, `work`, under `.claude/skills/` in the synced folder, which teaches the agent to use both and carries the data map (how SharePoint is structured) and the memory files (`about-dorsar.md`, `about-bill.md`, pre-seeded from the August calls and finished in the interview). When Bill approves a draft, the agent adds the entry to the investment's Word note and flips the index line to approved.

## Shape: SharePoint as the knowledge base

Dorsar stays in SharePoint. There is no markdown wiki in month one; the Word notes are the wiki, and they already exist.

```
<SharePoint, synced through OneDrive>/
  <Investments library>/            existing, one folder per investment (confirm in D3)
    <investment>/                   quarterly packages + the Word note, untouched
  <Entity financials library>/      existing (confirm in D2, D3)
  <Diligence library or folder>/    existing (confirm in D2)
  AI Outputs/                       new: where the AI saves its work
    Index/index.md                  the ledger of everything the AI made
  CLAUDE.md, AGENTS.md              pointer paragraph from templates/kb-root/
  .claude/skills/work/              the skill: SKILL.md, data-map.md, about-dorsar.md, about-bill.md, preferences/
```

Rules the generated skill carries:

- Read the SharePoint copy of a package, never the chat history and never a summary of a summary.
- Every output shows its sources by file name and page, says what changed since the prior period, states uncertainty, and marks where Bill's judgment is required.
- Draft-first: `AI Outputs` is the only place the agent creates files. Word notes get entries only after Bill approves, and the approval is logged.
- Off-limits folders are named in the data map and skipped even when asked to "search everything".

## Automation, later

Month one relies on the completion criterion in the manual (an output is done when its index line exists) and the "check the knowledge base" routine run on the weekly call. If index lines get missed in practice, week 3 adds a Claude Code Stop hook that reminds the agent to write them; Codex has no equivalent, so the routine stays. A scheduled check (Task Scheduler running the CLI) belongs to the IT firm in month 2. Hooks and schedulers come after the rule has been seen to slip, never before.

## A markdown wiki, later

If month 3 brings monthly financial review across 50 entities, a compiled `wiki/` of one page per entity with sources cited may pay for itself. Propose it then, not now.

## Defaults for each interview domain

| Domain | Default proposal |
|---|---|
| First split | Investments library by investment; financials by entity then year |
| Names | Existing names stay; agent-created files `YYYY-MM-DD investment what period` |
| Versions | One living Word note per investment, dated entries newest first; packages keep their period in the name |
| Who wins | SharePoint copy over Arch email for reading; manager's report is the fact, Word note is Dorsar's view |
| Reading | Every synced library except the named off-limits folders |
| Writing | Create in `Outputs`; propose Word note entries; edit nothing else |
| Team | Bill owns the folder; the analyst and SharePoint teammate open the Code tab in the same synced folder |
| Personal habits | `preferences/<person>.md` inside the skill, read only in that person's sessions |
