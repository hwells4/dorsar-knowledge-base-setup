# Install and hand over, Dorsar

Three people, Windows PCs, SharePoint synced through OneDrive. One real copy of each skill in the `Dorsar AI` library, links in each person's home directory, made by the join skill.

## Layout in SharePoint

```
Dorsar AI/
  CLAUDE.md, AGENTS.md                      pointer paragraph from templates/kb-root/
  .agents/skills/
    work/                  the manual, from templates/generated-skill/
    join-knowledge-base/                    the bootstrap, from templates/join-knowledge-base/
```

`.agents/skills/` is the only real skills directory. Codex reads it in-project. Claude Code reads only `.claude/skills/`, and reaches the manual through the home-directory links. Links are never created inside the synced folder: OneDrive uploads a link's contents as a real folder and the next PC syncs a diverging copy.

## Where it runs

The synced `Dorsar AI` folder is the project. Bill points the Claude Desktop app's Code tab at it, Codex opens in it, and there is no separate local project folder: a second folder would be a second source of truth, and SharePoint is the one Bill chose. The investment and financial libraries are sibling folders under the same OneDrive root and are read by the paths in the data map. The Code tab is the same Claude Code engine with the same skill folders, settings, and `CLAUDE.md`, so nothing here changes. Two things the desktop app needs on Windows: Git for Windows installed before the Code tab is first opened (without it the shell tool falls back to PowerShell, which is enough for `join.ps1` but not for anything bash-shaped), and the session switched to "Accept edits" so folder creation and junctions do not prompt one by one. Put Git for Windows on Bill's prep list.

## Join: one run per PC

Each person opens Claude Code (or Codex) inside the `Dorsar AI` folder and says "set me up". The pointer in `CLAUDE.md` sends the agent to the join skill, which runs `join.ps1`. The script pins the folder so every file is on disk, then links each skill into `~/.claude/skills`, `~/.agents/skills`, and `~/.codex/skills` using directory junctions, which need no admin rights. Re-running is safe.

Verify on Bill's PC during the session: a fresh Claude Code session in the home folder, one question ("where do draft reviews go?"), the answer names `Dorsar AI/Outputs`. Junction-backed skill loading on Windows is the thing to confirm on a real machine before the teammates join.

## What stays out of this install

- Git. Dorsar has no repo and needs none in month one. SharePoint version history covers the manual.
- The professional Dorsar AI identity, service accounts, Slack ingestion, and any Azure permissions. Those belong to the IT firm in month 2 or 3, per the working plan. Until then everything runs under Bill's own account on his own PC.
- Plugins. The manual ships as plain files so any of the three can change it by talking to their agent.

## Chat

Bill also uses Claude in the browser. There the skill is an uploaded zip that goes stale until re-uploaded, and SharePoint is reached through the Microsoft 365 connector. Claude Code reads the live file. Tell Bill which one he is in when a rule seems out of date.

## Handover paragraph

One paragraph in Bill's words: draft reviews land in `Dorsar AI/Outputs` named by date, investment, and period; the agent reads the investment folders and the entity financials; it never opens the named off-limits folders; nothing touches a Word note until he approves; to change a rule he says "from now on ..." and the manual updates for all three; his teammates join by opening Claude Code in the `Dorsar AI` folder and saying "set me up".
