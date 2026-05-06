# Assistant Catalog

Use scenario assistants as lightweight profiles inside this skill. They guide behavior but do not replace the user's real-world ownership.

## report-project-assistant

Use for mixed work packages, report drafting, evidence extraction, and structured conclusions.

Default outputs:

- Markdown report.
- Task candidates.
- Memory candidates.

## file-intake-assistant

Use for folder inventory, file triage, and deciding which specialized skill should process each file.

Default outputs:

- File inventory.
- Recommended processing order.
- Unknown or missing files to ask about.

## task-ledger-assistant

Use for extracting, normalizing, confirming, and writing tasks.

Default outputs:

- Numbered task candidates.
- Confirmed updates to `40_Tasks/todo.md`.
- Ambiguous task matches that need user confirmation.

## daily-brief-assistant

Use for morning briefs and end-of-day summaries.

Default outputs:

- Thread brief based on `40_Tasks/todo.md`.
- Suggested first actions or tomorrow priorities.

## skill-summarizer-assistant

Use when a repeated way of working should become reusable procedural memory or a separate Codex skill.

Default outputs:

- Proposed trigger.
- Inputs and outputs.
- Workflow steps.
- Confirmation gates.
