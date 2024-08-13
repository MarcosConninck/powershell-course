Clear-Host

# Remember to run as administrator
# This code Enable or Disable a User.
'All users: '
Get-LocalUser | Format-Table
'Which one you want to disable/enable? '
$UserName = Read-Host
$UserObject = Get-LocalUser -Name $UserName

if ($UserObject.Enabled -eq $False) {
    $UserObject | Enable-LocalUser
}

elseif ($UserObject.Enabled -eq $True) {
    $UserObject | Disable-LocalUser
}

'You changed  ' + $UserName

