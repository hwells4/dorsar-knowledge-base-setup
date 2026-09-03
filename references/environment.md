# First run in a new environment

This skill runs on a machine it has never seen: Bill's own Windows PC, a fresh Claude Code install, SharePoint synced through OneDrive, an IT firm that controls permissions. Assume nothing about it matches the machine the skill was written on. Survey first, adapt, and repair the skill in place when it is wrong.

## Survey before step 1

Run the checks that apply and keep the answers in your scratch notes:

- Operating system and shell. Windows means PowerShell; `bash`, `python3`, `ln -s`, and `~` may all be absent or mean something else. Mac or Linux means bash is there.
- Which harness you are in and whether the other is installed. The Claude Desktop app's Code tab bundles its own engine, so `claude` may be missing from the terminal even though Claude Code is running; treat "no `claude` on PATH" as normal there. `codex --version` says whether Codex is present.
- Which permission mode the session is in. Manual mode prompts on every folder creation; ask the person to switch to "Accept edits" for the setup session so the prompts stop, and say why.
- Where the synced folder is on this machine: OneDrive, Drive, or Dropbox root, and whether the files are on disk or cloud-only placeholders.
- Whether git exists. The desktop app's Code tab wants Git for Windows installed; absent it, the shell tool falls back to PowerShell.
- What the permission mode is: if every file write prompts, tell the interviewee what to expect before the interview starts, so the prompts are not a surprise.

## Adapt

Pick the command that fits what the survey found, never the one the doc assumed. A path in a reference file is an example of the shape, and the real path is whatever the survey listed.

## Self-heal

When something in this skill fails against reality (a script errors, a path pattern is wrong, an instruction assumes a tool that is missing, a platform behaves differently than the doc says), fix the skill in place the same session, then continue:

1. Get the interviewee unblocked first, by hand if needed.
2. Edit the script or reference file so the next run on the same kind of machine works without the detour.
3. Append one entry to `learnings.md`: what failed, on what platform, what fixed it, the rule going forward.
4. Say what you changed in one sentence, so the coach knows the skill moved.

The session never stops for tooling. A missing tool is a detour, and the detour becomes the doc.
