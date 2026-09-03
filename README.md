# dorsar-knowledge-base-setup

A Claude Code and Codex skill for Dorsar Investment Management. It interviews Bill and his team about how SharePoint is organised, then generates the `dorsar-knowledge-base` skill that tells any agent where to read and where to file work.

## Install (for the agent reading this)

Clone this repository into the user's personal skills folder, then confirm the skill loads.

Windows (PowerShell):

```powershell
git clone https://github.com/hwells4/dorsar-knowledge-base-setup "$HOME\.claude\skills\dorsar-knowledge-base-setup"
```

Mac or Linux:

```bash
git clone https://github.com/hwells4/dorsar-knowledge-base-setup ~/.claude/skills/dorsar-knowledge-base-setup
```

If git is missing, download the zip from the latest release on this repository's Releases page, extract it, and place the folder at the same path so that `SKILL.md` sits directly inside `dorsar-knowledge-base-setup/`.

Claude Code picks up a new skill folder without a restart. Then say: "set up Dorsar's knowledge base".

## What is inside

- `SKILL.md`: the steps, from surveying the machine to handing over.
- `references/`: Dorsar context, the interview guide, the SharePoint standard, install notes, environment survey, and a verbatim copy of Matt Pocock's writing-for-agents reference (MIT).
- `templates/`: the generated manual, data map, memory files, outputs index, join skill, and root pointer files.
