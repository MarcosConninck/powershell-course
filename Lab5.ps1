# $Csv = Import-Csv -Path .\files\lab5.csv
$Csv = Import-Csv -Path .\csv-examples\wizards.csv

# foreach ($Item in $Csv) {
#     $Pass = ConvertTo-SecureString -String $Item.PASSWORD -AsPlainText -Force
#     New-LocalUser -Name $Item.NAME -Password $Pass -Description $Item.DEPARTMENT
# }

# foreach ($User in $Csv) {
#     Remove-LocalUser -Name $User.NAME
# }

foreach ($Item in $Csv) {
    $Pass = ConvertTo-SecureString -String $Item.PASSWORD -AsPlainText -Force
    if ($Item.DEPARTMENT -eq 'EvilWizards') {
        'This user is from department Evilwizards!!'
        'Really want to Create this user?'

        $Answer = Read-Host
        if ($Answer -eq 'Y') {
            $Answer = New-LocalUser -Name $Item.NAME -Password $Pass -Description $Item.DEPARTMENT
        }
        else {
            'Ok, this user will not be created'
        }
    }
    elseif ($Item.DEPARTMENT -ne 'EvilWizards') {
        $Pass = ConvertTo-SecureString -String $Item.PASSWORD -AsPlainText -Force
        $Answer = New-LocalUser -Name $Item.NAME -Password $Pass -Description $Item.DEPARTMENT
    
    }
}

# foreach ($Item in $Csv) { 
#     Remove-LocalUser -Name $Item.NAME
# }