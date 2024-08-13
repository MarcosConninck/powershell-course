Clear-Host

'What day is it? '
$Day = Read-Host


if ($Day -eq 'Monday'){
    'On '+ $Day +' you eat Bami Goreng'
    $Day = 'Tuesday' # Don't work, because the block of statement stoped here
}

elseif ($Day -eq 'Tuesday') {
    'On '+ $Day +' you eat Rendang'
    'Cause you like that'
}
elseif ($Day -eq 'Wednesday') {
    'On '+ $Day +' you eat tomatoes'
}
else {
    'I DONT CARE'
}

'Scipt stoped'