Clear-Host

# Date Checker, the script will run till another day.
# Good for script something like: shutdown the computer in certain DateTime.
$Day = Get-Date -Format "dddd"
while ($Day -eq 'Thursday') {
    'It is ' + $Day + ' not Friday'
    Start-Sleep -Seconds 2
    $Day = Get-Date -Format "dddd"
}
# set-date -Date (Get-Date).AddDays(1) in another terminal

""
'Well, its Friday finally!!'

# set-date -Date (Get-Date).AddDays(-1) in another terminal 