# Install and hand over, Dorsar

Three people, Windows PCs, SharePoint synced through OneDrive. No links, no installer. The `work` skill lives in SharePoint and Claude Code reads it from there.

## Where the skill lives

```
<synced Dorsar SharePoint folder>/
  AI Outputs/Index/index.md       the ledger, from templates/outputs-index.md
  CLAUDE.md, AGENTS.md            pointer paragraph from templates/kb-root/
  .claude/skills/work/            the whole generated skill, from templates/generated-skill/
```

Claude Code loads project skills from `.claude/skills/` inside whatever folder the session is opened in. So the rule for everyone is one sentence: open the Code tab in the Dorsar SharePoint folder.

Which folder, exactly: OneDrive syncs each SharePoint document library as its own folder under `Dorsar Investment Management`, and that parent is not itself synced. So the project is the library that holds the investment folders, and `AI Outputs/`, `CLAUDE.md`, and `.claude/skills/work/` go inside that library, at its top level. If the interview finds the investments split across several libraries, pick the one Bill opens most and note the others in the data map; reads across libraries ask permission once per folder. Bill does it on his PC; the analyst and the SharePoint teammate do it on theirs once OneDrive has synced the folder. Nothing to install on any machine.

## Where it runs

The synced Dorsar SharePoint folder is the project. Bill points the Claude Desktop app's Code tab at it, and there is no separate local project folder: a second folder would be a second source of truth, and SharePoint is the one Bill chose. The investment and financial libraries are sibling folders under the same OneDrive root and are read by the paths in the data map.

Two things the desktop app needs on Windows: Git for Windows installed before the Code tab is first opened, and the session switched to "Accept edits" so folder creation does not prompt one item at a time. Put Git for Windows on Bill's prep list.

## Verify

First, in File Explorer, confirm OneDrive shows the `.claude` folder with a green check. Microsoft's current restrictions page lists no rule against names starting with a period, but older guides did, so look. If it will not sync, `/work` still runs on Bill's PC and the teammates get it later through the links in [`update.md`](update.md).

Then a fresh Code tab session in the Dorsar folder. Two questions: "where do you save your work?" (the answer names `AI Outputs` and the index) and "who am I?" (the answer comes from `about-bill.md`). Those two answers are the demo.

## What stays out, for now

- Loading `/work` from any directory, and Codex. Both need the skill linked into home folders; that is a later step in [`update.md`](update.md), added only when someone actually works outside the Dorsar folder.
- Git. SharePoint version history covers the manual.
- The professional Dorsar AI identity, service accounts, Slack ingestion, Azure permissions. IT firm, month 2 or 3.
- Plugins. The manual ships as plain files so any of the three can change it by talking to their agent.

## Chat

Bill also uses Claude in the browser. There the skill is an uploaded zip that goes stale until re-uploaded, and SharePoint is reached through the Microsoft 365 connector. Claude Code reads the live file. Tell Bill which one he is in when a rule seems out of date.

## Handover paragraph

One paragraph in Bill's words: open the Code tab in the Dorsar folder and `/work` is there; the AI saves its work in `AI Outputs` named by date, investment, and period, and records every piece in the index; it reads the investment folders and the entity financials; it never opens the named off-limits folders; nothing touches a Word note until he approves; to change a rule he says "from now on ..." and the manual updates for all three; his teammates get it by opening the same folder.
