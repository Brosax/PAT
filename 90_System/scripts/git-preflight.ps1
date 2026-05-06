param(
    [string]$RemoteUrl = "https://github.com/Brosax/PAT.git",
    [string]$Branch = "main"
)

$ErrorActionPreference = "Stop"

$root = git rev-parse --show-toplevel
if ((Resolve-Path -LiteralPath $root).Path -ne (Resolve-Path -LiteralPath (Get-Location)).Path) {
    Set-Location -LiteralPath $root
}

$currentRemote = git remote get-url origin 2>$null
if (-not $currentRemote) {
    git remote add origin $RemoteUrl
} elseif ($currentRemote -ne $RemoteUrl) {
    throw "Unexpected origin remote: $currentRemote"
}

$currentBranch = git branch --show-current
if ($currentBranch -ne $Branch) {
    throw "Unexpected branch: $currentBranch"
}

git fetch origin --prune

$previousErrorPreference = $ErrorActionPreference
$ErrorActionPreference = "SilentlyContinue"
git show-ref --verify --quiet "refs/heads/$Branch" *> $null
$hasHead = ($LASTEXITCODE -eq 0)
$ErrorActionPreference = $previousErrorPreference

if ($hasHead) {
    $previousErrorPreference = $ErrorActionPreference
    $ErrorActionPreference = "SilentlyContinue"
    $upstream = git rev-parse --abbrev-ref --symbolic-full-name "@{u}" 2>$null
    $upstreamExitCode = $LASTEXITCODE
    $ErrorActionPreference = $previousErrorPreference
    if ($upstreamExitCode -eq 0 -and $upstream) {
        git pull --ff-only
    } else {
        Write-Host "No upstream configured yet; skipping pull."
    }
} else {
    Write-Host "No commits yet; skipping upstream pull."
}

git status --short --branch
