Clear-Host

# This script must be compiled to a .exe

# Function to check if the script is running as administrator
# This function uses Security.Principal.WindowsPrincipal to check the current user's privileges.
# It does not violate security policies and is a common practice in PowerShell scripts.
function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    return $currentUser.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

# If not running as administrator, restart the script as administrator
if (-not (Test-Admin)) {
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Change the execution policies to allow scripts
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force

# Actual time
$Now = Get-Date -Format "HH:mm"
Write-Host "It is $Now" -ForegroundColor Green

# Function to get a valid time input in HH:mm format
function Get-ValidTime {
    param (
        [string]$Prompt = "Enter the time to ShutDown your computer (HH:mm)"
    )

    $timePattern = "^(?:[01]\d|2[0-3]):[0-5]\d$"
    do {
        $HourMinuteInput = Read-Host -Prompt $Prompt
        if ($HourMinuteInput -match $timePattern) {
            return $HourMinuteInput
        }
        else {
            Write-Host "Invalid format. Please enter time in HH:mm format. (24 hours)" -ForegroundColor Red
        }
    } while ($true)
}

# Function to confirm shutdown
function ShutDownConfirmation {
    param (
        [string]$Prompt = "Confirm? (y/n) or (leave)"
    )
        
    do {
        $Confirmation = Read-Host -Prompt $Prompt
        switch ($Confirmation.ToLower()) {
            "y" { return $true }
            "n" { return $false }
            "leave" { exit }
            Default { Write-Host "You must chose (y/n) or (leave)" -ForegroundColor Red }
        }
        
    } while ($true)
}

# Get a valid time input from the user
$Time = Get-ValidTime
Write-Host 'You entered a valid time' $Time -ForegroundColor Green

# Confirm shutdown and execute shutdown command
if (ShutDownConfirmation) {
    Write-Host "Ok, shutting down... "
    while ($Now -ne $Time) {
        'It is ' + $Now + ' will not shut down yet'
        'Waiting till ' + $Time
        Start-Sleep -Seconds 10
        $Now = Get-Date -Format "HH:mm"
    }
    shutdown.exe /s /f /t 0

}
else {
    Write-Host "Shutdown canceled"
}