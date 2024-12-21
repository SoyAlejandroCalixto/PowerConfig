. $PSScriptRoot\lib\PkgsI.ps1
. $PSScriptRoot\lib\WriteFile.ps1
. $PSScriptRoot\lib\PkgsI.ps1

# Write console messages while configuring!
Write-Host "`n-- Configuring my operative system --`n" -ForegroundColor Blue

# Some configurations
SetTheme dark
TaskbarCentered $true
MouseAcceleration $false
AutomaticUpdates $false

# Define some dotfiles
WriteFile "$env:USERPROFILE\AppData\Local\myfile.json" @"

    {
        "key": "value"
    }

"@

# Install some packages
PkgsI -p @(
    "Git.Git",
    "Python.Python.3.13",
    "WhatsApp"
)
