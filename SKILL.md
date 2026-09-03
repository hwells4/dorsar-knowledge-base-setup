---
name: dorsar-knowledge-base-setup
description: "Interview Bill Feinberg and the Dorsar Investment Management team about how their SharePoint is organised (private investment folders, quarterly packages, Word notes, entity financials), then generate the work skill that teaches any agent on Claude Code or Codex where to read and where to save work. Use when working with Dorsar, Bill, or when asked to define SharePoint inputs and outputs, map Dorsar's files, or set up Dorsar's knowledge base."
metadata:
  skill_md_budget: "120 lines"
  learnings_md_budget: "60 lines"
  client: "Dorsar Investment Management"
  derived_from: "knowledge-base-setup"
---

Interview, then build, for one client. Read [`references/dorsar-context.md`](references/dorsar-context.md) first: it holds what the August calls and emails already settled, so the interview spends its questions on what is still unknown. The interviewee is Bill Feinberg, CIO, with up to two team members (a part-time operations analyst who monitors Arch and a SharePoint team member). Every question is in plain English: "when you save a new version of an investment note, how do you tell it from the old one?", never "how do you handle version control?". The product is a **data map** of Dorsar's SharePoint and the generated `work` skill that carries it into every future session for Bill and his team.

Facts are your job. Decisions are Bill's. Look before you ask.

## Steps

### 0. Survey the machine

This is a new environment on its first run. Read [`references/environment.md`](references/environment.md) and run its survey before anything else: platform, shell, skill folders, synced-folder path, whether links work, which harnesses are installed. Whatever it finds overrides any path or command written in this skill. When a script or instruction here fails against this machine, fix it in place, log it in `learnings.md`, and continue.

Done when: the survey answers are in your notes and the interviewee knows what permission prompts to expect.

### 1. Reach SharePoint

Dorsar's files live in SharePoint, synced to each machine through OneDrive. Ask which library holds the private investment folders and confirm you can list it. If nothing is listable, read [`references/connectors.md`](references/connectors.md) and get the sync in place before any interview question.

Done when: you have listed the library that holds the investment folders, or the SharePoint team member has told you it is not synced on this machine yet and you have the path to fix that.

### 2. Explore

Survey what you can reach: top two levels of the investment library, the folder for each of the three to five test investments Bill chose, a sample of eight to ten file names from those folders, the Word note in each, and patterns that reveal versioning (dates, v2, final, copy of). Note anything that looks like board strategy, family, compensation, or employee material; those are off limits by decision already made. Write the survey to your scratch notes as "I see X, Y, Z" statements.

Done when: every top-level folder has a one-line guess at what it holds, each test investment's package and Word note are located, and you have a list of what the survey could not tell you.

### 3. Interview

Read [`references/interview.md`](references/interview.md) and run the interview in rounds: at most three questions per round, each with a recommended answer in plain English, bounded choices where the choice is bounded. Open each round with what the survey showed, so Bill corrects rather than describes. The known answers in the context file are read back for confirmation, never asked again. Cap the whole interview at about fifteen questions.

Done when: every domain in the interview guide has an answer or an explicit "we do not have this yet", and Bill has confirmed a plain-English readback with "yes, that is how we work".

### 4. Propose what is missing

For each gap, propose the Dorsar standard from [`references/house-standard.md`](references/house-standard.md), one proposal at a time, in Bill's words. The one required item is an outputs folder in SharePoint where every AI-produced review lands first, draft-only, so nothing touches an investment's Word note until Bill approves it.

On approval create the empty folders, `Outputs/index.md` from [`templates/outputs-index.md`](templates/outputs-index.md), the two `Context/` files from [`templates/context/`](templates/context/) finished with what the interview settled, and the root `CLAUDE.md` and `AGENTS.md` from [`templates/kb-root/`](templates/kb-root/). Existing files stay exactly where they are.

Done when: every gap has an approved home, the approved folders exist, and Bill has read `Context/about-bill.md` and said it is right.

### 5. Generate the skill

Read both files in [`references/writing-for-agents/`](references/writing-for-agents/) before writing a line. Then fill [`templates/generated-skill/`](templates/generated-skill/), already pre-seeded with Dorsar's buckets, with what the interview settled. The generated skill is what Bill's agents run every session, and the quarterly report review skill built in weeks 2 to 3 will lean on it for every path it reads and writes.

Done when: the generated SKILL.md is under 60 lines and carries the change protocol from the template, `data-map.md` names a home for every bucket, and a fresh agent reading only those two files could find the latest quarterly package for a named investment and file a draft review in the right place.

### 6. Install and hand over

Follow [`references/install.md`](references/install.md): the manual and a copy of [`templates/join-knowledge-base/`](templates/join-knowledge-base/) go under `.agents/skills/` in the synced SharePoint folder, and the join skill links them into each person's home directory on Claude Code and Codex. Run the join on Bill's machine yourself during the session. Give Bill a one-paragraph summary and the sentence for his two teammates: "open Claude Code in the Dorsar AI folder and say set me up".

Done when: the skill loads in a fresh session in the home folder on Bill's machine and Bill has the handover paragraph.

## Re-runs

Day-to-day rule changes are handled by the generated skill editing itself. Re-run this skill only for a structural change: a new SharePoint library, the IT firm's professional AI identity coming online, monthly financial review starting in month 3, or a teammate joining. For those, read [`references/update.md`](references/update.md).

<learning_capture>
A learning is an actionable discovery from executing this skill that should change future runs. Save one dated, atomic entry to `learnings.md` when execution hits friction: a question Bill or his team misread, a OneDrive sync or Windows junction path that failed, a proposal they rejected and why. Include the trigger, what failed or changed, the successful resolution, and the future rule. When the resolution was an edit to this skill's own scripts or references, name the file. Do not save Dorsar facts or interview answers; those belong in `references/dorsar-context.md` or the generated data map.
</learning_capture>
