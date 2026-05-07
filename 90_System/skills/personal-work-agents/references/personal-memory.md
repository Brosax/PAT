# Personal Memory

This file stores only user-confirmed preferences and work patterns.

## Confirmed Preferences

- Default language for personal work assistant outputs: Chinese.
- Default report output format: Markdown.
- Default task ledger format: Markdown.
- Default task capture mode: propose candidates first, write only after confirmation.
- Default owner for extracted tasks: the user.
- Default daily rhythm: weekdays at 08:00 and 16:30 Europe/Madrid.
- Default data boundary: local-first; do not browse or use external systems unless explicitly requested.
- Default vault organization: numbered English workflow folders in the Obsidian vault.
- Default intake location for new work files: `00_Inbox/`.
- Default task ledger path: `40_Tasks/todo.md`.
- Default report output path: `50_Reports/<YYYY-MM-DD>-<task-name>/report.md`.
- Code files may remain in the vault, but are not default work-material inputs unless explicitly requested.
- Backed-up Obsidian reference skills live in `90_System\skills`: `defuddle`, `json-canvas`, `obsidian-bases`, `obsidian-cli`, and `obsidian-markdown`.
- Before modifying Obsidian vault files, consult the matching backed-up skill: Markdown notes use `obsidian-markdown`, `.canvas` uses `json-canvas`, `.base` uses `obsidian-bases`, Obsidian CLI operations use `obsidian-cli`, and URL-to-Markdown extraction uses `defuddle`.
- Git backup rule: before changing files in the personal vault, run a git preflight check and sync from `https://github.com/Brosax/PAT.git`; after changing files, commit and push to that repository.
- Default git remote for the personal vault: `origin = https://github.com/Brosax/PAT.git`.
- Default local git branch: `main`.
- Shared workgroup folder `C:\Users\A511741\DEKRA SE\I+D Team Cybersecurity - General` is read-only by default. The assistant may access it for inspection when requested, but must not create, edit, move, rename, or delete files there unless the user explicitly approves the exact file list and requested changes.
- Approved shared write exception: `C:\Users\A511741\DEKRA SE\I+D Team Cybersecurity - General\00_Planning\01_OST\OST - XMF.pptx` may be modified to update the user's Monday morning OST presentation about current ongoing tasks. No other file in that shared folder is write-approved by this exception.
- Weekly presentation update rhythm: update `OST - XMF.pptx` every Monday at 08:00 Europe/Madrid for the weekly morning meeting, using the personal task ledger and current work notes as sources.
- OST update gate: before modifying `OST - XMF.pptx`, read the previous/latest slide and ask the user for progress, blockers, and whether each item should move status. The assistant must add the user's stated status/progress to the deck instead of rewriting the goals from scratch.

## Candidate Rules

When a task reveals a reusable preference, propose it as a memory candidate instead of writing here directly.

Use this candidate format:

```markdown
## 可记忆规则候选

1. Rule:
   Evidence:
   Why it helps:
```

Write to this file only after explicit confirmation.
