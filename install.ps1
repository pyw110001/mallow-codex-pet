$ErrorActionPreference = 'Stop'

$userProfile = [Environment]::GetFolderPath('UserProfile')
$targetDirectory = Join-Path $userProfile '.codex\pets\mallow'

New-Item -ItemType Directory -Path $targetDirectory -Force | Out-Null
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'pet.json') -Destination (Join-Path $targetDirectory 'pet.json') -Force
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'spritesheet.webp') -Destination (Join-Path $targetDirectory 'spritesheet.webp') -Force

Write-Host "Mallow installed to $targetDirectory"
