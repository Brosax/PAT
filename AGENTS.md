# Repository Guidelines

This file is the shared guidance for Claude Code, Codex, and other agents working in this repository.

## What This Is

An Obsidian knowledge vault ("PAT" - Personal Agent Team) for personal work management at DEKRA SE's I+D Cybersecurity team. This is not a software project; most content is Markdown, YAML, JSON, Canvas/Bases, and PowerShell.

## Git Workflow

This vault uses a two-script git workflow. Always run preflight before planned changes and backup after confirmed changes:

```powershell
# Before changes - fetch + fast-forward pull
powershell -ExecutionPolicy Bypass -File "90_System\scripts\git-preflight.ps1"

# After changes - stage all, commit, push
powershell -ExecutionPolicy Bypass -File "90_System\scripts\git-backup.ps1" -Message "Describe the change"
```

Remote: `https://github.com/Brosax/PAT.git` (branch: `main`)

## Project Structure & Module Organization

Top-level folders use numeric prefixes to keep navigation stable in Obsidian's file explorer:

| Folder | Purpose |
|--------|---------|
| `00_Inbox/` | Landing zone for new, unclassified files and intake indexes |
| `10_Projects/` | Finite projects, one subfolder each |
| `20_Areas/` | Ongoing responsibilities and domains |
| `30_Resources/` | Reusable references and background material |
| `40_Tasks/` | Canonical task ledger (`todo.md`) and task indexes |
| `50_Reports/` | Assistant-generated reports and summaries |
| `60_Daily/` | Daily notes in `YYYY-MM-DD.md` format |
| `70_Templates/` | Reusable note templates |
| `80_Archive/` | Completed projects and inactive material |
| `90_System/` | Vault workflows, skills, scripts, and system config |

## Obsidian & Markdown Conventions

- Daily notes: format `YYYY-MM-DD`, stored in `60_Daily/`, template from `70_Templates/Daily Note`.
- Templates folder: `70_Templates/`.
- Use YAML frontmatter matching existing notes: `type`, `status`, `created`, `updated`, `owner`, and `tags`.
- Prefer Obsidian wikilinks such as `[[40_Tasks/todo|Todo Ledger]]` and callouts such as `> [!note]`.
- Keep Markdown concise, with sentence-case prose and clear `##` sections.
- Task IDs follow `T-YYYYMMDD-NN`.
- Preserve `.gitattributes` line endings: Markdown, JSON, YAML, Canvas, and Bases files use LF; PowerShell scripts use CRLF.
- User's preferred output language is Chinese.

## Core Workflow (personal-work-agents skill)

The main orchestrating skill lives at `90_System/skills/personal-work-agents/SKILL.md`. It routes to sub-workflows:

1. **Inbox triage** - classify and route files from `00_Inbox/`.
2. **Task extraction** - propose tasks, get user confirmation, write to `40_Tasks/todo.md`.
3. **Daily briefs** - morning (08:00) and end-of-day (16:30) summaries from the task ledger.
4. **Reports** - mixed work package reports to `50_Reports/`.
5. **Vault organization** - folder triage, indexing, and archiving.

All writes to the task ledger and personal memory require explicit user confirmation.

## Validation Guidelines

There is no compiled build step and no automated test framework is configured. Validate changes by opening affected notes in Obsidian when layout matters, checking frontmatter parses cleanly, and confirming tables still align in `40_Tasks/todo.md`. For skills under `90_System/skills/`, keep instructions executable and examples specific.

Use `rg "search term" 10_Projects 20_Areas 40_Tasks` before adding duplicate notes or tasks.

## Commit & Pull Request Guidelines

Recent commits use short imperative messages, for example `Organize Obsidian AI inbox resources` and `Add git sync workflow`. Follow that style: verb first, concise scope, no trailing punctuation. Pull requests should summarize changed vault areas, mention any task or report links, and include screenshots only when visual Obsidian layout or Canvas/Bases behavior changed.

## Security & External Tools

Treat this vault as local-first private work content. Do not add temporary Office lock files, OS noise, or `.trash/` contents; they are ignored intentionally. The shared workgroup folder (`DEKRA SE\I+D Team Cybersecurity - General`) is read-only by default. Avoid external browsing or shared-folder writes unless the user explicitly requests them.

Optional tools:

- **defuddle** (npm global) - web page to clean markdown extraction.
- **obsidian CLI** - programmatic vault interaction with a running Obsidian instance.
