param(
    [string]$Message = "Update personal work vault",
    [string]$Remote = "origin",
    [string]$Branch = "main"
)

$ErrorActionPreference = "Stop"

$root = git rev-parse --show-toplevel
if ($LASTEXITCODE -ne 0) { throw 'Cannot locate the vault Git repository.' }
Set-Location -LiteralPath $root

git add -A
if ($LASTEXITCODE -ne 0) { throw 'Git staging failed; backup was not completed.' }

$pending = git status --short
if ($LASTEXITCODE -ne 0) { throw 'Cannot read pending vault changes.' }
if (-not $pending) {
    Write-Host "No changes to commit."
} else {
    git commit -m $Message
    if ($LASTEXITCODE -ne 0) { throw 'Git commit failed; backup was not completed.' }
}

# Retry an earlier failed push even when there are no new changes to commit.
git push -u $Remote $Branch
if ($LASTEXITCODE -ne 0) { throw 'Local files are saved, but remote backup failed. Retry the backup without duplicating edits.' }
git status --short --branch
if ($LASTEXITCODE -ne 0) { throw 'Backup pushed, but the final Git status could not be read.' }
