Clear-Host
# Obviously isn't safe to do this
'Give me your name'
$Name = Read-Host

'give me your password'
$PasswWord = Read-Host

if ($Name -eq 'Marco' -and $PasswWord -eq '123') {
    'Loggin in ' + $Name
}
else {
    'wrong password or name'
}