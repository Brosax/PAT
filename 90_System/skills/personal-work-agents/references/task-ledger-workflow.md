# Task Ledger Workflow

Use this reference when extracting, confirming, writing, or updating tasks in `40_Tasks/todo.md`.

## Ledger Contract

The task ledger is a Markdown file for people first. Keep it easy to edit manually.

Default path:

`C:\Users\A511741\Desktop\AA_Personal Agent Team\40_Tasks\todo.md`

Task fields:

- `ID`: stable local id, formatted `T-YYYYMMDD-NN`.
- `Status`: `Inbox`, `Todo`, `Doing`, `Waiting`, or `Done`.
- `Task`: concise action phrase.
- `Due`: absolute date or `TBD`.
- `Source`: conversation, file path, meeting, or user instruction.
- `Next`: immediate next action.
- `Notes`: short context, blocker, suggested assistant, or linked file path.

## Candidate Extraction

Extract a task candidate only when there is an action that someone should do.

Strong signals:

- The user says they need to finish, prepare, send, review, follow up, decide, compare, summarize, update, or check something.
- A document assigns an action, owner, deadline, request, dependency, or follow-up.
- A meeting note contains "action", "next step", "owner", "deadline", "待办", "负责人", or similar wording.

Do not treat these as tasks by default:

- Background facts, general ideas, preferences, or vague possibilities.
- A workflow rule that belongs in memory rather than the todo ledger.
- A completed historical action unless it creates a follow-up.

## Confirmation Gate

Never write extracted candidates to `todo.md` immediately.

First present:

```markdown
## 待办候选

1. [Todo] Task title
   Due: YYYY-MM-DD or TBD
   Source: ...
   Next: ...
   Notes: Suggested assistant: ...
```

Write only when the user clearly confirms, for example:

- "确认记录"
- "写入待办"
- "确认第 1 条"
- "确认第 1、3 条"
- "把这些都记录下来"

If confirmation references item numbers, write only those items.

## Writing And Updating

Before editing, read the current `40_Tasks/todo.md` and preserve existing tasks.

When adding tasks:

- Generate the next available `T-YYYYMMDD-NN` id for the current Europe/Madrid date.
- Add new tasks to the table matching their status.
- Use `TBD` when no deadline is available.
- Use a short source label plus an absolute path when a file caused the task.

When updating tasks:

- Match by explicit task id whenever possible.
- If no id is provided, show likely matches and ask before changing ambiguous tasks.
- Move completed tasks to `Done` and set notes to include completion context when useful.

## Suggested Assistants

Use scenario assistants as execution support:

- `report-project-assistant`: summarize materials, draft reports, extract evidence.
- `file-intake-assistant`: inventory folders and route files.
- `task-ledger-assistant`: normalize task candidates and maintain `todo.md`.
- `daily-brief-assistant`: generate morning and end-of-day briefs.
- `skill-summarizer-assistant`: convert repeated work patterns into reusable skills.
