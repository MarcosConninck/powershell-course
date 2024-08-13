Clear-Host

'What day is it? '
$Day = Read-Host


if ($Day -eq 'Monday') {
    'Are you sure you want ot know what you will eat on ' + $Day + 'chose y/n'
    $Answer = Read-Host
    if ($Answer -eq 'y' -or $Answer -eq 'Y') {
        'You will eat Nasi Goreng on ' + $Day
    }
    elseif ($Answer -eq 'n' -or $Answer -eq 'N') {
        'ok'
    } 
    else {
        "You didn't answer it right"
    }
}

elseif ($Day -eq 'Tuesday') {
    'On ' + $Day + ' you eat Rendang'
    'Cause you like that'
}
elseif ($Day -eq 'Wednesday') {
    'On ' + $Day + ' you eat tomatoes'
}
else {
    'I DONT CARE'
}

'Scipt stoped'