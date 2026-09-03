# Dorsar context

What is already known before the interview starts. Sources: discovery calls on 2026-08-19 and 2026-08-25, the closing call on 2026-08-28, the roadmap and working plan sent 2026-08-28, and the email thread through 2026-09-02. Read back the "settled" items for confirmation; spend questions only on the "open" items.

## The business

Dorsar Investment Management, Santa Fe, New Mexico. Bill Feinberg is CIO and the primary participant. Roughly 65 private investments and roughly 50 reporting entities. Real estate is a large share of the asset management work. Bill already uses ChatGPT and Claude individually for diligence, document review, legal-language interpretation, and pressure-testing conclusions; the problem is turning that into a dependable system the team shares.

## The team

| Person | Role in this work |
|---|---|
| Bill Feinberg | Sets the investment standard, review rules, escalation rules, final judgment. Hands-on with questions and review, hands-off on hosting, Azure, API keys, service accounts. |
| Operations analyst (part-time) | Monitors Arch and sends one email per investment with the quarterly materials. Provides examples, corrects output. |
| SharePoint team member | Knows the library structure and permissions. Join them for the survey in step 2 when available. |
| Outsourced IT firm | Owns accounts, permissions, the future professional-only "Dorsar AI" identity, Microsoft and Slack setup. Named contact still to be confirmed. |

## Buckets of work, in Bill's words

1. Quarterly private-investment reports: packages arrive from Arch, one email per investment; each investment has a Word note in SharePoint that holds Dorsar's running view.
2. Monthly financial statements across the reporting entities (second pilot, month 3).
3. Due diligence on new investments.
4. Asset management, mostly real estate.
5. Legal documents and legal-language review.

## Decisions already made

- Quarterly report review is the first pilot; monthly financial review is second.
- SharePoint is the durable source of truth. Chat history is not.
- Slack is the main interaction channel; email keeps delivering source files.
- Read-only and draft-first: nothing writes to SharePoint without approval until the output is trusted. The first version drafts a dated entry for the existing Word note; it does not edit the note.
- Arch stays as intake. Nothing rebuilds Arch or browser logins.
- A professional-only Dorsar AI identity with narrow permissions, managed by the IT firm, comes in month 2 or 3. Until then, work runs on Bill's own machine and account.
- Off limits, by decision on the 2026-08-25 call: board strategy, family matters, compensation, employee reviews, and any personal information.
- Trust rules for every output: show sources, identify what changed, state uncertainty, make clear where Bill's judgment is required.

## From the call transcripts (19, 25, 28 August)

- Two SharePoint sites were merged; the part-time teammate is still reorganising the result. Bill also has his own personal SharePoint site, which he says is more relevant than the company one, and "probably half" of the company site is not material. The interview must establish which site and which library the agent reads first.
- The Word notes: one per investment, titled like "ABC Investment Notes", chronological descending, at most about 20 pages, holding call notes and only the three-standard-deviation quarterly events. Not standardised across investments. Public index positions have no note.
- A quarterly package is financial statements, capital accounts, and a narrative. The analyst checks Arch daily and sends one email per investment. Arch's own AI digest is "usually quite wrong"; the agent should read the documents, never Arch's summary.
- Bill's ideal output, in his words: read the package, summarise, store the summary in the Word note, email him the summary with the documents attached, and give a fast no or a fast maybe with the reason.
- Personal material lives on a RAID drive at home, never on SharePoint. Anything personal in Claude chat history is the only overlap.
- Bill runs Claude on the top subscription and ChatGPT on the middle one and filters questions through both. Employees are getting paid Claude accounts. He installed the Claude desktop app on his laptop in August. Windows throughout.
- Slack for employees and the outsourced financial reporting group; Teams for the outsourced accounting group. He prefers Slack or text to email, and dislikes the phone.
- The hallucination that worries him: Claude told him he attended a college he never attended and lacked an MBA he has, after he had uploaded his CV. That is the "agents forget who I am" problem; `Context/about-bill.md` is the answer.
- He finds model flattery patronising and wants to know how to turn it off. Recommendations should be plain and direct.
- He wants to be hands-on for anything tied to his CIO role and hands-off on plumbing. He is prone to optimisation rabbit holes and has asked to be told when something is good enough.
- The outsourced IT firm sets up accounts and services; he stopped doing tech support for his employees.

## Open, to be settled in the interview

- The first split inside the investment library: by investment, by fund, by year, or by manager?
- How quarterly packages are named when the analyst files them, and whether the Arch email or the SharePoint copy is the one the agent should read.
- How the Word note is versioned today: one living document with dated entries, or a new file per quarter?
- Where entity financial statements live and how the roughly 50 entities are separated.
- Where diligence material for prospective investments lives, and whether it moves when an investment closes.
- Where real estate asset management material lives.
- Which SharePoint libraries the two teammates can already see, so the outputs folder lands somewhere all three reach.
- Whether the three to five test investments are chosen (Bill's first homework) and which they are.
- The IT contact's name.
