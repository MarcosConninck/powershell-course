Clear-Host

$Csv = Import-Csv -Path .\files\creatingCSV.csv

foreach ($User in $Csv) {
    $SecurePass = ConvertTo-SecureString -String $User.PASSWORDOFUSER -AsPlainText -Force
    New-LocalUser -Name $User.LOGONNAME -Password $SecurePass -Description $User.DESCRIPTION
}
