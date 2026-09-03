# The interview, Dorsar edition

Relentless, plain English, look-first. You are mapping a **design tree**: each answer settles a decision, and the settled decisions unblock the next ones. The **frontier** is the set of questions you can ask now without guessing at an answer you have not heard. Ask the frontier in rounds of at most three, wait, recompute, repeat. Done when the frontier is empty and nothing is silently assumed.

Bill wants a direct recommendation, the reason, and the next step. He does not want a menu. Every question carries one recommended answer and at most two alternatives.

## Round format

```
**Q1. <question in plain English>**
What I see: <one line from the survey, or "nothing yet">
Options: A) ... B) ... C) something else
My recommendation: <one sentence and why>
```

Ask, then wait. A question whose answer depends on one still open belongs to a later round.

## Rules for wording

| Say | Never say |
|---|---|
| "Do you have a standard way of naming documents and marking versions, or does it vary by person?" | "What is your versioning scheme?" |
| "When you update the Word note for an investment, do you add to the same file or save a new one?" | "Is the note append-only or snapshotted?" |
| "If Arch and the SharePoint copy disagree, which one do you trust?" | "What is the source of truth?" |
| "Show me one package file name and one Word note name. Is that the standard, or just how those two happened to be named?" | "What are your naming conventions?" |
| "When you open the investments library, what is the first split?" | "How is the library partitioned?" |
| "Which folders should the AI stay out of?" | "What are the access controls?" |

One concrete example beats a general rule: "the Q2 package for one of your five test investments" not "packages in general".

## Domains

Each ends with an answer or an explicit "we do not have this yet". "Known" lines come from [`dorsar-context.md`](dorsar-context.md) and are read back for confirmation in one sentence, never asked as open questions.

### D1. Shape of the business
Known: five buckets (quarterly reports, monthly entity financials, diligence, real estate asset management, legal). Roughly 65 investments, roughly 50 entities.
Ask: is that the full list, and are the words right?

### D2. Where each bucket lives
Known: quarterly packages arrive from Arch by email and land in SharePoint; each investment has a Word note in SharePoint.
Ask: for the other four buckets, which library or folder, and which one Bill opens first when he needs something.
Recommend: one primary home per bucket, everything else is a copy.

### D3. The first split
Ask: inside the investments library, is the first level by investment, by fund, by year, or by manager? Is it the same for the entity financials?
Recommend: by investment for the investment library, by entity then year for financials.

### D4. Names and versions
Ask first: does Dorsar have a standard naming structure for documents and a standard way of marking versions, or does it vary by person and by year? If yes, ask for it and read two real file names from the survey back against it. If no, show the three most different names the survey found and ask which one is closest to what they would want.
Recommend: existing names stay; the agent learns them rather than renaming anything Arch or the analyst produces. New files the agent creates use `YYYY-MM-DD investment what period`.

### D5. The Word note
Ask: when the note for an investment is updated, is it the same file with dated entries, or a new file each quarter? Where do superseded packages go?
Recommend: one living note per investment with dated entries at the top, newest first; packages keep their period in the name and stay in place.

### D6. Who wins
Known: SharePoint over chat history.
Ask: Arch email versus the SharePoint copy of a package; the Word note versus a manager's report when they disagree on a number.
Recommend: SharePoint copy is what the agent reads; the manager's report is the fact, the Word note is Dorsar's view of it, and the output says which is which.

### D7. Outputs
Known: draft-first, nothing writes to the Word note without approval.
Ask: where in SharePoint should draft reviews land so all three people can find them, and does Bill want them delivered through Slack as well?
Also ask: for each kind of thing the AI will make (quarterly review, diligence memo, financial summary), does Dorsar already keep that kind of thing somewhere? That existing place is where the AI saves it; `AI Outputs` is the default for everything else, and `AI Outputs/Index/index.md` lists all of it.
Recommend: an `AI Outputs` folder with an `Index` inside, in the library all three people can see, plus the Slack summary. This is the one non-negotiable proposal.

### D8. Reading rules
Known: off limits are board strategy, family matters, compensation, employee reviews, personal information.
Ask: which folders those actually are, by name, and whether anything else in the investment library is restricted.
Recommend: name each off-limits folder in the data map; the agent reads everything else in the synced libraries.

### D9. Writing rules
Known: read-only and draft-first until trusted.
Ask: may the agent create files inside `Outputs` without asking each time? May it ever edit a Word note, and if so who approves?
Recommend: create freely in `Outputs`; propose Word note entries as drafts; Bill approves; the agent edits nothing else.

### D10. What breaks today
Ask: where does Bill lose time or redo work in the quarterly cycle right now? What did the last missed escalation look like?
Recommend: nothing. Listen and write it down; it becomes the review standard in week 2.

## What the interview also produces

The answers to D1, D8, D9, and D10 plus how Bill wants recommendations delivered are written into `about-dorsar.md` and `about-bill.md` inside the generated skill in step 5. Ask one extra question for the owner file if nothing so far has covered it: "When I give you an answer, what do you want first: the recommendation, the reasoning, or the evidence?"

## Readback

Write the whole picture back in eight to twelve plain sentences: buckets, primary home per bucket, first split, name shape, version rule, who wins, outputs folder, off-limits folders by name, write rules. End with: "Is that how you work? Correct anything that is wrong." Done when Bill says yes.
