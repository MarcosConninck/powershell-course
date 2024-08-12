Clear-Host
'Give me your name, please: '
[string]$Name = Read-Host
'Give me your surname: '
[string]$Surname = Read-Host

'Greetings ' + $Name + ' ' + $Surname
'$Name type: ' + $Name.GetType()
'$Surname type ' + $Surname.GetType()