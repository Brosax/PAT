# Report Project Workflow

Use this reference for mixed local work packages that may include documents, spreadsheets, PDFs, copied email text, screenshots, or notes.

## Intake

1. Confirm the target files or folder path from the user request.
2. Inventory relevant files by name, type, size, and apparent purpose.
3. Identify which files need specialized skills, such as documents, spreadsheets, presentations, or images.
4. Ask only if the goal, audience, or output format is genuinely unclear.

## Default Output

Default report format is Markdown.

Suggested structure:

```markdown
# Report Title

## 摘要
## 关键发现
## 证据与来源
## 风险与未决问题
## 建议下一步
## 待办候选
## 可记忆规则候选
```

Save to `50_Reports/<YYYY-MM-DD>-<task-name>/report.md` only when the user asks for a saved artifact.

## Evidence

- Cite local source paths for material claims.
- Distinguish source facts from agent inference.
- Do not invent missing facts; mark unknowns clearly.

## Follow-Up Extraction

After the report, propose:

- Task candidates for `40_Tasks/todo.md`.
- Memory candidates for `references/personal-memory.md`.

Both require explicit user confirmation before writing.
