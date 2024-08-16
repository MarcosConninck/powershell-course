Clear-Host

[int]$Number = Get-Random -Minimum 1 -Maximum 11
[int]$Attempts = 4

'Please guess the number  between 1 and 10 and I will tell you if you are right ! you have 4 tries'
while ($Guess -ne $Number) {
    [int]$Guess = Read-Host
    if ($Guess -eq $Number) {
        'You guessed it: ' + $Guess  
    }
    elseif ($Guess -ne $Number -and $Attempts -ne 1) {
        $Attempts -= 1
        if ($Guess -gt $Number) {
            "Guess again, your number " + $Guess + ' is too high. ' + $Attempts + ' tries left'
        }
        elseif ($Guess -lt $Number) {
            'Guess again, you number ' + $Guess + ' is too low. ' + $Attempts + ' tries left'
        }
    }
    else {
        'Sorry, you lose, the number was ' + $Number 
    }
}
