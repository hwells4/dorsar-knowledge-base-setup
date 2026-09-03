# Dorsar data map: how SharePoint is structured

Interviewed <YYYY-MM-DD> with Bill Feinberg<, and names of teammates present>. Re-run the `dorsar-knowledge-base-setup` skill to change anything structural here; day-to-day rule changes are edited in place.

## Where each bucket lives

| Bucket (Bill's words) | Primary home (read here first) | Copies also in | First split inside |
|---|---|---|---|
| Quarterly private-investment reports | `<Investments library path>` | Arch, the analyst's email | <by investment> |
| Investment Word notes | `<same folder as the investment>` | | one note per investment |
| Monthly entity financial statements | `<Entity financials path>` | | <by entity, then year> |
| Due diligence on new investments | `<path>` | | <by prospect> |
| Real estate asset management | `<path>` | | <by property or entity> |
| Legal documents | `<path>` | | |
| AI work | `<AI Outputs path>` | Slack summary | one file per investment per period |
| Ledger of everything the AI made | `<AI Outputs path>/Index/index.md` | | one line per output |

## Who wins

| Kind of fact | Trust this place |
|---|---|
| Contents of a quarterly package | The SharePoint copy in the investment folder |
| A number the manager reported | The manager's report (the fact); the Word note holds Dorsar's view of it |
| Dorsar's position on an investment | The investment's Word note, newest dated entry |
| Anything discussed in chat | Nothing until it is in SharePoint |

## AI Outputs

Path: `<AI Outputs path>`
Index: `<AI Outputs path>/Index/index.md`
Name shape: `YYYY-MM-DD investment what period`
Approval: Bill approves a draft before its entry goes into the Word note. Approval flips the index line to approved.

## Off limits

- `<path>` (board strategy)
- `<path>` (family matters)
- `<path>` (compensation and employee reviews)
- <anything personal Bill names>

## Team

Owner of the AI Outputs folder and this skill: Bill Feinberg. Shared via SharePoint, synced through OneDrive. Who else uses it: <operations analyst>, <SharePoint teammate>. IT contact for permissions: <name>.

## Test investments

<The three to five investments Bill chose for month one, with the path to each folder.>

## What was breaking before

<Two or three lines from D10: where time was lost in the quarterly cycle, and the last missed escalation.>
