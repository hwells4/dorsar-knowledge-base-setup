---
name: work
description: "How work gets done at Dorsar Investment Management: how SharePoint is structured, where the AI saves its work (the AI Outputs folder), how every piece is named and recorded in the index, who Bill is and how he wants to be worked with. Load at the start of every session and before reading or creating any file for Dorsar."
---

Dorsar Investment Management manages roughly 65 private investments and 50 reporting entities. SharePoint is the source of truth; chat history is not. This skill is the team's operating manual, and everything it needs is in this folder.

## Session start

Read, in this order, before doing anything else: [`about-dorsar.md`](about-dorsar.md) (the business, its systems, standing rules), [`about-bill.md`](about-bill.md) (who you work for and how he wants to be worked with), [`data-map.md`](data-map.md) (how SharePoint is structured, where each kind of file lives, folders to stay out of), then `preferences/<your user's name>.md` if it exists (that one person's habits, which win over team defaults in their sessions only). These files are your memory across sessions and across Claude Code, Codex, and chat. If a session starts with "you have forgotten who I am", the fix is reading these files, then adding what was missing to them.

## Saving work

Every piece of work you produce is saved in `AI Outputs/` in SharePoint (the path is in the data map), named `YYYY-MM-DD investment what period` (example: `2026-09-18 <investment> quarterly-review 2026-Q2.docx`). When Dorsar already keeps that kind of thing somewhere (an investment report beside the other investment reports), save it there instead and still record it below. A revision is a new dated file; the newest date is current and older files stay.

## Recording work in the index

`AI Outputs/Index/index.md` is the ledger of everything the AI has ever made. After saving any file, add one line: date, what, where it lives, the sources it came from, draft or approved. A file without an index line does not count as done. Anyone can find any past piece of work from the index alone.

Done when the file exists at its home with the date-first name and the index line is written.

## Reading

Read the SharePoint copy of a package, from the investment's own folder. Compare against the prior period's package and the investment's Word note. When two places disagree, the manager's report is the fact and the Word note is Dorsar's view of it; say which is which. Every output cites sources by file name and page, says what changed since the prior period, states uncertainty, and marks where Bill's judgment is required.

## Writing rules

Create freely in `AI Outputs/` and in this skill's folder. Anywhere else in SharePoint, write a new file only when saving work to its existing home as above. Word notes get a new entry only after Bill approves the draft, and only the entry, never edits to what is already there. Approval flips the index line to approved.

## Off limits

<Folders named in the interview for: board strategy, family matters, compensation, employee reviews, personal information.> Read nothing inside them, even when asked to search "everywhere".

## Changing how we work

Any of the three of you changes this manual by telling the agent. When someone states a standing rule ("from now on drafts also go to Slack"), check it is a rule and not a one-off: ask "every time, or just this one?" if the wording leaves room. A rule is edited into this file, `data-map.md`, or `about-dorsar.md` the same session, with one dated line at the bottom of the file that changed. A personal habit ("give me the fast no first") goes in `about-bill.md` under preferences learned, or in `preferences/<their name>.md` for a teammate. Say: "done, that applies from your next chat."

Keep this file under 60 lines: adding a rule that pushes it over means an older rule moves, merges, or goes.

## Checking the knowledge base

When asked to "check the knowledge base", or on the first session of each month: every file the AI created since the last check has an index line (find orphans by date, add the lines); every index line points at a file that exists; `about-dorsar.md` and `about-bill.md` match what the team has said since they were written; this file has no contradictions. Report what was fixed in five lines or fewer.
