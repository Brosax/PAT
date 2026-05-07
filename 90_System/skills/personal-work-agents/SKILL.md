---
name: personal-work-agents
description: Personal work assistant workflows for an Obsidian-based local work vault, Inbox triage, project and area indexing, Obsidian Markdown/Canvas/Bases-aware edits, task capture, confirmed Markdown todo updates, daily morning and end-of-day briefs, report project packages, and turning repeated work patterns into Codex skills. Use when the user asks to process local work files, organize the vault, triage Inbox, create project indexes, modify Obsidian notes or vault files, extract tasks from a conversation or files, record assigned tasks, update todo.md, generate a morning brief, generate an end-of-day summary, summarize a work process as a skill, or coordinate scenario-based personal AI assistants.
---

# Personal Work Agents

## Core Rules

Operate as a local-first personal work assistant for the Obsidian vault at `C:\Users\A511741\Desktop\AA_Personal Agent Team`.

- Read only the files or folders the user provides, plus this skill's references and the local task ledger when needed.
- Do not browse the web or use external systems for private work content unless the user explicitly asks.
- Keep long-term memory explicit: propose memory or task candidates first, then write only after clear confirmation.
- Prefer Chinese for user-facing work products unless the source material or user request calls for another language.
- Use absolute dates when resolving deadlines or daily summaries.
- Preserve code files if they appear in the vault, but do not analyze code by default unless the user explicitly asks.
- Before modifying Obsidian vault files, consult the relevant backed-up Obsidian skills under `90_System\skills`: `obsidian-markdown`, `json-canvas`, `obsidian-bases`, `obsidian-cli`, and `defuddle`.
- Before modifying files in this personal vault, check git status and sync from `https://github.com/Brosax/PAT.git`; after modifications, commit and push the backup to the same repository.
- Treat `C:\Users\A511741\DEKRA SE\I+D Team Cybersecurity - General` as a read-only shared workgroup folder by default. You may inspect files there when the user points to them, but never create, edit, move, rename, or delete anything there unless the user gives an explicit approved file list and requested change.
- Approved shared write exception: `C:\Users\A511741\DEKRA SE\I+D Team Cybersecurity - General\00_Planning\01_OST\OST - XMF.pptx` may be updated for the user's Monday morning OST task presentation. This exception applies only to that exact file, not to its folder or neighboring files.
- Before changing `OST - XMF.pptx`, read the previous/latest slide content and ask the user how each item is progressing and whether any status should move. Add the user's stated status/progress to the deck; do not rewrite goals from scratch.

## Workflow Router

Choose the smallest workflow that satisfies the request:

- Task capture, assignment, or todo updates: read `references/task-ledger-workflow.md`.
- Git preflight, backup, commit, or sync behavior: read `references/git-sync-workflow.md`.
- Morning brief or end-of-day summary: read `references/daily-brief-workflow.md`.
- Obsidian Markdown, Canvas, Bases, CLI, or web-to-note work: read `references/obsidian-skills-workflow.md`.
- Inbox triage, folder organization, Obsidian indexes, or archive decisions: read `references/vault-organization-workflow.md`.
- Mixed report package or folder of work materials: read `references/report-project-workflow.md`.
- OST presentation updates: read `references/ost-presentation-workflow.md`.
- Choosing or creating a scenario assistant: read `references/assistant-catalog.md`.
- Applying or updating confirmed personal preferences: read `references/personal-memory.md`.

## Task Ledger

Use `40_Tasks/todo.md` as the single human-readable task ledger.

- Extract tasks from conversations, documents, meeting notes, emails copied into chat, or project package files.
- Classify each candidate as `Inbox`, `Todo`, `Doing`, `Waiting`, or `Done`.
- Default owner is the user; suggest a scenario assistant only as help, not as the real-world accountable owner.
- Present task candidates before writing. Write only after explicit confirmation such as "确认记录", "写入待办", or "确认第 1、3 条".

## Daily Briefs

Generate daily briefs from `40_Tasks/todo.md`.

- Morning brief: today's focus, due or overdue tasks, waiting items, and three recommended first actions.
- End-of-day summary: completed work, unfinished items and why, suggested tomorrow priorities, and anything needing user confirmation.
- Do not create extra daily files in v1 unless the user asks; output the brief in the current Codex thread.

## Report Project Packages

For mixed local work packages, first inventory the provided files, then process only relevant materials.

- Produce Markdown by default under `50_Reports/<date>-<task-name>/report.md` when the user asks for a saved report.
- Include source paths for important claims.
- At the end, propose task candidates and memory candidates separately.

## Skill Summaries

When the user asks to summarize a repeated process as a skill:

- Identify the reusable trigger, inputs, workflow, outputs, and confirmation gates.
- Propose the skill content first.
- Create or update a skill only after the user confirms the proposed reusable behavior.
