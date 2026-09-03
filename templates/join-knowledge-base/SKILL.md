---
name: join-knowledge-base
description: "Connect this computer's Claude Code and Codex to the team knowledge base in the shared OneDrive or Drive folder: pins the folder locally, links every skill in it into the home skill folders, verifies. Use when a new person or new machine joins, when a teammate says set me up, or when the knowledge base skill is not loaded in a session started inside this folder."
---

Wire this machine to the knowledge base this skill lives in. The real skills stay in the synced folder under `.agents/skills/`; this skill only creates links in the home directory, one per skill, so both Claude Code and Codex find them from any working directory. Links inside the synced folder itself are never created, because OneDrive and Drive upload a link's contents as a real folder and the team ends up with diverging copies.

## Steps

1. Tell the person what is about to happen in one sentence: "I am connecting your Claude and Codex to the team folder; nothing in the folder changes."
2. Run the script for this platform from this skill's folder. Windows: `powershell -ExecutionPolicy Bypass -File join.ps1`. Mac or Linux: `bash join.sh`. The script pins the knowledge base so every file is on disk (OneDrive Files On-Demand otherwise leaves cloud-only placeholders), then creates the links and prints each one.
3. If the script fails to run at all (no PowerShell policy, no bash, a path that does not exist here), make the links by hand: one directory junction (Windows: `New-Item -ItemType Junction -Path <home skills dir>\<name> -Target <kb>\.agents\skills\<name>`) or symlink (Mac: `ln -s`) per skill per folder, listing through each one to confirm. Then fix the script so the next machine does not need the detour, and note what changed at the bottom of this file.
4. Read the script output. A line starting with `skipped` means a real directory already sits where a link should go; show the person the path and ask before replacing it.
5. On Mac, OneDrive has no command to pin a folder. Ask the person to right-click the knowledge base folder in Finder and choose "Always Keep on This Device", then confirm they did.
6. Verify: start a fresh Claude Code session in the home folder and ask "where do proposals go?". The answer names the outputs folder from the data map. Repeat in Codex if installed.

Done when: every skill under `.agents/skills/` has a link in `~/.claude/skills`, `~/.agents/skills`, and `~/.codex/skills`, the folder is pinned, and the fresh-session check passed on every harness the person uses.

## When a new skill appears in the folder

A teammate's agent added a skill. Re-run step 2; the script is safe to repeat and only adds what is missing.
