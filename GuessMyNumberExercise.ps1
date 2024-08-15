Clear-Host

'Please guess the number  between 1 and 10 and I will tell you if you are right !'
$Number = Get-Random -Minimum 1 -Maximum 11

while ($Guess -ne $Number) {
    $Guess = Read-Host
    if ($Guess -eq $Number) {
        'You guessed it: ' + $Guess  
    }
    else {
        if ($Guess -gt $Number) {
            "Guess again, your number " + $Guess + ' is too high'
        }
        elseif ($Guess -lt $Number) {
            'Guess again, you number ' + $Guess + ' is too low'
        }
    }
    '(the number is ' + $Number + ')'
}
