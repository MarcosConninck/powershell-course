Clear-Host

'give me one number: '
[int]$FirstNumber = Read-Host


'give me the second number'
[int]$SecondNumber = Read-Host

$Total = $FirstNumber + $SecondNumber

'the operation is: ' + $Total