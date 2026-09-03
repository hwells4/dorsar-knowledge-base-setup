# Re-running on an existing knowledge base

Read this when a generated skill already exists and the interviewee wants a change: a new tool, a new bucket, a teammate joining, a folder that moved, or a rule that turned out wrong.

## Steps

1. Load the existing generated skill and its `data-map.md`. Those are the current truth; the interview only asks about deltas.
2. Re-run the survey from step 2 of the main skill against every location the data map names. Note what moved, what appeared, what disappeared.
3. Ask only the frontier that the deltas open, at most three questions per round, same wording rules as [`interview.md`](interview.md). Open each with what changed: "the Clients folder now has a 2026 subfolder that the map does not know about. Is that the new first split, or a one-off?"
4. Readback of the deltas only. Done when they confirm.
5. Edit `data-map.md` and the generated `SKILL.md` in place. Every changed line gets a dated entry in the knowledge base's `log.md` (Shape A) or in a `changes` section at the bottom of `data-map.md` (Shape B).
6. Re-verify per [`install.md`](install.md): fresh session, one question, right folder.

## When Codex or any-directory loading is needed

Claude Code only reads the skill when the Code tab is opened in the Dorsar folder, and Codex reads `.agents/skills/`, not `.claude/skills/`. When someone actually needs `/work` outside that folder or on Codex, add links from the home skill folders (`~/.claude/skills/work`, `~/.agents/skills/work`, `~/.codex/skills/work`) to the SharePoint copy: directory junctions on Windows, symlinks on Mac. Never create links inside the synced folder; OneDrive uploads a link's contents as a real folder. Do this only when the need is real.

Done when: the data map matches the surveyed reality, the interviewee has confirmed the deltas, and the fresh-session check passes.
