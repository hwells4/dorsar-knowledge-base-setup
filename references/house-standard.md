# Dorsar standard

What to propose when the interview answered "we do not have this yet". One item at a time, in Bill's words, created only on approval. Existing files stay where they are; Arch, the analyst's email routine, and the Word notes are untouched.

## The one required item

A `Dorsar AI` document library (or folder in an existing library all three people can see) holding three things:

- `Outputs/` with `index.md`, the ledger. Work that has an existing home in SharePoint (an investment report beside the other investment reports) is written there; work with no home is written in `Outputs/`. Every piece gets one index line either way: date, what, where it lives, sources, draft or approved. Named `YYYY-MM-DD investment what period` (example: `2026-09-18 blackrock-re-fund-iv quarterly-review 2026-Q2.docx`). Never overwritten; a revision is a new dated file. The index is the seed of the wiki: it grows one line per output and is the place a future wiki compiles from.
- `Context/` with `about-dorsar.md` and `about-bill.md`, from [`../templates/context/`](../templates/context/), pre-seeded from the August calls and finished in the interview. Read at the start of every session; this is how agents stop forgetting who Bill is.
- The skills under `.agents/skills/`.

When Bill approves a draft, the agent adds the entry to the investment's Word note and flips the index line to approved.

## Shape: SharePoint as the knowledge base

Dorsar stays in SharePoint. There is no markdown wiki in month one; the Word notes are the wiki, and they already exist.

```
<SharePoint, synced through OneDrive>/
  <Investments library>/            existing, one folder per investment (confirm in D3)
    <investment>/                   quarterly packages + the Word note, untouched
  <Entity financials library>/      existing (confirm in D2, D3)
  <Diligence library or folder>/    existing (confirm in D2)
  Dorsar AI/                        new
    Outputs/                        work with no existing home, plus index.md, the ledger of everything the AI made
    Context/                        about-dorsar.md, about-bill.md: the agent's memory, read every session
    Review standards/               what a review must catch, cite, compare, escalate (written in week 1)
    CLAUDE.md, AGENTS.md            pointer paragraph from templates/kb-root/
    .agents/skills/
      work/        the manual, edited in place as rules change
        preferences/<person>.md     personal habits for Bill, the analyst, the SharePoint teammate
      join-knowledge-base/          connects a new machine
```

Rules the generated skill carries:

- Read the SharePoint copy of a package, never the chat history and never a summary of a summary.
- Every output shows its sources by file name and page, says what changed since the prior period, states uncertainty, and marks where Bill's judgment is required.
- Draft-first: `Outputs` is the only place the agent creates files. Word notes get entries only after Bill approves, and the approval is logged.
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
| Team | Bill owns the library; the analyst and SharePoint teammate join by saying "set me up" |
| Personal habits | `preferences/<person>.md` inside the skill, read only in that person's sessions |
