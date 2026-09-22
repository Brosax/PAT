---
name: personal-work-agents
description: Personal work assistant for the PAT Obsidian vault. Use when the user describes work plans, tasks, progress, blockers, decisions, or completed work in vault conversations, even without an explicit logging request; automatically preserve work logs and maintain weekly indexes. Also use for work-history queries, Inbox triage, project indexing, confirmed todo updates, daily briefs, report packages, and reusable workflow skills. General questions, workflow design discussions, examples, and messages marked not to record do not trigger logging.
---

# Personal Work Agents

## Core Rules

Operate as a local-first personal work assistant for the Obsidian vault at `C:\Users\A511741\Desktop\AA_Personal Agent Team`.

- Read the files or folders the user provides, this skill's references, and the local task ledger when needed. For work logging and retrieval, also read daily logs, weekly indexes, templates, and relevant project/area indexes within this vault.
- Do not browse the web or use external systems for private work content unless the user explicitly asks.
- Work logs are automatically authorized in this vault from 2026-09-22; task-ledger changes and personal preference memory still require explicit confirmation. Do not treat permission to log as permission to update either.
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

- Work descriptions, progress/completion reports, corrections, and work-history queries: read `references/work-log-workflow.md`. Apply the logging trigger even when the user does not say "record". Use the vault's copy as authoritative; automatic logging does not apply to conversations outside this vault.
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
- Present task candidates before writing. Write only after explicit task confirmation such as "写入待办" or "确认第 1、3 条" in response to the candidate list. A generic "记录一下" requests a log, not a task-ledger update.

## Daily Briefs

Generate daily briefs from `40_Tasks/todo.md`.

- Morning brief: today's focus, due or overdue tasks, waiting items, and three recommended first actions.
- End-of-day summary: use work logs for dated completion evidence, then the ledger for confirmed task state; distinguish logged progress from unconfirmed ledger changes.
- Output briefs in the current conversation by default. Work descriptions are saved separately by the work-log workflow; do not copy generated briefs into logs or create empty daily notes for a query.

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
