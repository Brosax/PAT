param(
    [string]$Message = "Update personal work vault",
    [string]$Remote = "origin",
    [string]$Branch = "main"
)

$ErrorActionPreference = "Stop"

$root = git rev-parse --show-toplevel
Set-Location -LiteralPath $root

git add -A

$pending = git status --short
if (-not $pending) {
    Write-Host "No changes to commit."
    git status --short --branch
    exit 0
}

git commit -m $Message
git push -u $Remote $Branch
git status --short --branch
