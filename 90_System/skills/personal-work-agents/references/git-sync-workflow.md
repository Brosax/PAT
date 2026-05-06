# Git Sync Workflow

Use this reference before and after modifying files in the personal Obsidian vault.

## Repository

- Vault root: `C:\Users\A511741\Desktop\AA_Personal Agent Team`
- Remote: `https://github.com/Brosax/PAT.git`
- Branch: `main`

## Before Changes

Run the preflight script:

```powershell
powershell -ExecutionPolicy Bypass -File "90_System\scripts\git-preflight.ps1"
```

The preflight must:

- Confirm the current directory is the vault git repository.
- Confirm `origin` points to `https://github.com/Brosax/PAT.git`.
- Fetch remote changes.
- Fast-forward pull when an upstream branch exists.
- Report local status before edits.

If there are uncommitted local changes before starting unrelated work, inspect them and do not overwrite them.

## After Changes

Run the backup script:

```powershell
powershell -ExecutionPolicy Bypass -File "90_System\scripts\git-backup.ps1" -Message "Describe the change"
```

The backup must:

- Stage all vault changes.
- Commit when there is a diff.
- Push `main` to `origin`.
- Report the final status.

If there is no diff, report that no backup commit was needed.

## Safety

- Do not use destructive git commands such as `git reset --hard` or checkout-based file restoration unless the user explicitly requests them.
- Do not force-push.
- Do not commit files from the shared workgroup folder unless they are copied into the personal vault.
