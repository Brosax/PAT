# Vault Organization Workflow

Use this reference when organizing the Obsidian vault, triaging Inbox files, creating indexes, or archiving work.

## Vault Structure

Root path:

`C:\Users\A511741\Desktop\AA_Personal Agent Team`

Top-level folders:

- `00_Inbox/`: new unclassified work files.
- `10_Projects/`: finite projects with a goal and end condition.
- `20_Areas/`: long-running responsibilities.
- `30_Resources/`: reusable references, templates, policies, and background material.
- `40_Tasks/`: task ledger and task indexes.
- `50_Reports/`: assistant-generated reports, summaries, and analysis outputs.
- `60_Daily/`: Obsidian daily notes.
- `70_Templates/`: Obsidian note templates.
- `80_Archive/`: completed projects and stale materials.
- `90_System/`: assistant skills, workflows, and system configuration.

## Obsidian Indexes

Use `Index.md` files as human entry points.

Before creating or editing Obsidian Markdown notes, read `90_System\skills\obsidian-markdown\SKILL.md` and any directly relevant references it names.

Project index contents:

- Purpose and current status.
- Key source files and reports.
- Related tasks, daily notes, decisions, and open questions.

Area index contents:

- Responsibility description.
- Current focus.
- Related projects, recurring tasks, and reference files.

Use Obsidian links for internal references, for example `[[40_Tasks/todo]]`.

For non-Markdown Obsidian files, use the backed-up reference skills:

- `.canvas`: read `90_System\skills\json-canvas\SKILL.md` before editing.
- `.base`: read `90_System\skills\obsidian-bases\SKILL.md` before editing.
- Obsidian CLI operations: read `90_System\skills\obsidian-cli\SKILL.md` before running commands.
- URL content extraction into notes: read `90_System\skills\defuddle\SKILL.md` when appropriate.

## Inbox Triage

When the user asks to organize Inbox:

1. Inventory files in `00_Inbox/`.
2. Propose a destination for each file: project, area, resource, report, archive, or keep in Inbox.
3. Propose any `Index.md` updates.
4. Propose task candidates and memory candidates separately.
5. Move or edit files only after explicit confirmation.

Do not move code files unless the user explicitly asks. If code files are present, leave them in place and mention that they were ignored for default work-material triage.

## Shared Workgroup Folder

`C:\Users\A511741\DEKRA SE\I+D Team Cybersecurity - General` is a shared workgroup folder, not the personal vault.

- Use it as a read-only source unless the user explicitly approves an exact file list and requested change.
- Do not create, edit, move, rename, delete, or reorganize files in that folder by default.
- Current approved write exception: `C:\Users\A511741\DEKRA SE\I+D Team Cybersecurity - General\00_Planning\01_OST\OST - XMF.pptx` may be modified only for the user's Monday morning OST presentation update.
- When material from that folder needs to be worked on, prefer copying or summarizing outputs into the personal vault after user confirmation.
- Keep generated notes, tasks, reports, and memory in the personal vault unless the user explicitly says otherwise.

## Learning Rules

Treat repeated organization choices as memory candidates, not automatic memory writes.

Good memory candidates include:

- Preferred project naming patterns.
- Repeated folder routing choices.
- Preferred report sections.
- Repeated priority rules.
- Repeated source-file handling preferences.

Write confirmed rules to `90_System/skills/personal-work-agents/references/personal-memory.md`, then sync the skill to the global Codex skill folder.
