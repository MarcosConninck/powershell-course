Clear-Host

## MUST BE REVIEWED

# Shut Down the computer based on comparison between 2 Get-Date

$Day = Get-Date -Format "HH:mm"
$Day1 = "23:59"
while ($Day -ne $Day1) {
    'It is ' + $Day + ' will not shut down yet'
    'Waiting till ' + $Day1
    Start-Sleep -Seconds 10
    $Day = Get-Date -Format "HH:mm"
}
'SHUTTING DOWN!!!!'
'SHUTTING DOWN!!!!'
Stop-Computer -Confirm $false -Force $true

$Day -eq $Day1
