Clear-Host

# Shut Down the computer based on comparison between 2 Get-Date
'Welcome to the ShutDown'

$Day = Get-Date -Format "HH:mm"
'it is ' + $Day
'What time you want to shutdown? HH:mm'
[string]$Day1 = Read-Host

while ($Day -ne $Day1) {
    'It is ' + $Day + ' will not shut down yet'
    'Waiting till ' + $Day1
    Start-Sleep -Seconds 10
    $Day = Get-Date -Format "HH:mm"
}
$Day1.GetType() -eq $Day.GetType()

'SHUTTING DOWN!!!!'
'SHUTTING DOWN!!!!'
# Stop-Computer -Force

