Clear-Host

$Day = 'Monday'

while ($Day -eq 'Monday') {
    'It is ' + $Day

    $Day = Read-Host

    Start-Sleep -Seconds 1
}

'Leave loop'