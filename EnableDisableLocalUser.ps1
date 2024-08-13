Clear-Host

# Remember to run as administrator
# This code Enable or Disable a LocalUser.
'All users: '
Get-LocalUser | Format-Table
'Which one you want to disable/enable? '
$UserName = Read-Host
$UserObject = Get-LocalUser -Name $UserName
'At the moment using: "' + $UserObject.Name + '", which has the status "' + $UserObject.Enabled + '"'

if ($UserObject.Enabled -eq $False) {
    'Are you sure you want to enable this user? ' + $UserObject + ' y/n'
    $Answer = Read-Host
    if ($Answer -eq 'y') {
        Enable-LocalUser -InputObject $UserObject
    }
    elseif ($Answer -eq 'n') {
        'Ok we are not going to Enable this user ' + $UserObject
    }
}

elseif ($UserObject.Enabled -eq $True) {
    'Are you sure you want to Disable this user? ' + $UserObject + ' y/n'
    $Answer = Read-Host
    if ($Answer -eq 'y') {
        Disable-LocalUser -InputObject $UserObject
    }
    elseif ($Answer -eq 'n') {
        'Ok we are not going to Disable this user ' + $UserObject
    }
}

# Need to refresh it
$UserObject = Get-LocalUser -Name $UserName
'Now the user named "' + $UserObject.Name + '", has the status ' + $UserObject.Enabled


