---
name: dorsar-knowledge-base
description: "Where Dorsar Investment Management keeps its files and where new work goes: the investment folders and Word notes, entity financials, diligence, the Dorsar AI outputs ledger, the context files that remember Bill and the business, name and version rules, folders that stay untouched. Load before reading or creating any file for Dorsar, when asked where something lives, or when filing work."
---

Dorsar Investment Management manages roughly 65 private investments and 50 reporting entities. SharePoint is the source of truth; chat history is not. This skill is the team's operating manual.

## Session start

Read, in this order, before doing anything else: `Context/about-dorsar.md` (the business, systems, standing rules), `Context/about-bill.md` (who you work for and how he wants to be worked with), [`data-map.md`](data-map.md) (where every bucket lives, folders to stay out of), then `preferences/<your user's name>.md` if it exists (that one person's habits, which win over team defaults in their sessions only). These files are your memory across sessions and across Claude Code, Codex, and chat. If a session starts with "you have forgotten who I am", the fix is reading these files, then adding what was missing to them.

## Filing new work

Every piece of work has a home. If Dorsar already keeps that kind of thing somewhere (an investment report next to the other investment reports, a diligence memo in the prospect's folder), write it there. If it has no existing home, write it in `<Dorsar AI/Outputs path>`. Either way, name it `YYYY-MM-DD investment what period` and add one line to `Outputs/index.md`: date, what, where it lives, sources, draft or approved. The index is the ledger; anything the AI ever made is findable from it. A revision is a new dated file; the newest date is current and older files stay.

Done when the file exists at its home with the date-first name and the index line is written.

## Reading

Read the SharePoint copy of a package, from the investment's own folder. Compare against the prior period's package and the investment's Word note. When two places disagree, the manager's report is the fact and the Word note is Dorsar's view of it; say which is which. Every output cites sources by file name and page, says what changed since the prior period, states uncertainty, and marks where Bill's judgment is required.

## Writing rules

Create freely in `<Dorsar AI/Outputs path>`, in `Context/`, and in this skill's folder. Anywhere else in SharePoint, write a new file only when filing work to its existing home as above. Word notes get a new entry only after Bill approves the draft, and only the entry, never edits to what is already there. Approvals are logged in the index (status becomes approved) and in `log.md`.

## Off limits

<Folders named in the interview for: board strategy, family matters, compensation, employee reviews, personal information.> Read nothing inside them, even when asked to search "everywhere".

## Changing how we work

Any of the three of you changes this manual by telling the agent. When someone states a standing rule ("from now on drafts also go to Slack"), check it is a rule and not a one-off: ask "every time, or just this one?" if the wording leaves room. A rule is edited into this file, `data-map.md`, or `Context/about-dorsar.md` the same session, with one dated line in `log.md`. A personal habit ("give me the fast no first") goes in `Context/about-bill.md` under preferences learned, or in `preferences/<their name>.md` for a teammate. Say: "done, that applies from your next chat."

Keep this file under 60 lines: adding a rule that pushes it over means an older rule moves, merges, or goes.

## Checking the knowledge base

When asked to "check the knowledge base", or on the first session of each month: every file the AI created since the last check has an index line (find orphans by date, add the lines); every index line points at a file that exists; `Context/` files match what the team has said since they were written; this file has no contradictions. Report what was fixed in five lines or fewer.
