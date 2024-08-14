'Give me number 1 '
$Number1 = Read-Host
'Give me number 2 '
$Number2 = Read-Host

if ($Number1 -gt $Number2) {
    $Number1 + ' is greater than ' + $Number2
}
elseif ($Number1 -lt $Number2) {
    $Number1 + ' is less than ' + $Number2
}
elseif ($Number1 -eq $Number2) {
    $Number1 + ' is equal ' + $Number2
}