Clear-Host

$LocalUsers = Get-LocalUser

# 'The ' + $LocalUsers[0].Name + ' has the description "' + $LocalUsers[0].Description + '" and  status: ' + $LocalUsers[0].Enabled
# 'The ' + $LocalUsers[1].Name + ' has the description "' + $LocalUsers[1].Description + '" and  status: ' + $LocalUsers[1].Enabled
$LocalUsers.Count

foreach ($LocalUser in $LocalUsers) {
    if ($LocalUser.Enabled -eq $false -and $LocalUser.Description -eq 'Enabled Account') {
        $LocalUser.Name + ' ' + $LocalUser.Enabled + ' ' + $LocalUser.Description
        Set-LocalUser -Name $LocalUser.name -Description 'Disable account'
    }
}

Get-LocalUser