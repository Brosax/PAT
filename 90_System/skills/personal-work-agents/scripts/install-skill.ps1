param(
    [string]$Source = (Split-Path -Parent $PSScriptRoot),
    [string]$CodexSkillsRoot = $(if ($env:CODEX_HOME) { Join-Path $env:CODEX_HOME 'skills' } else { Join-Path $HOME '.codex\skills' })
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $Source)) {
    throw "Skill source not found: $Source"
}

$skillName = Split-Path -Leaf $Source
$target = Join-Path $CodexSkillsRoot $skillName

New-Item -ItemType Directory -Force -Path $target | Out-Null
Get-ChildItem -LiteralPath $Source -Force | Copy-Item -Destination $target -Recurse -Force

Write-Host "Installed $skillName to $target"
