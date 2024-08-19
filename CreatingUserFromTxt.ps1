Clear-Host

# Creating users from .txt
$UsersToCreate = Get-Content -Path .\files\users.txt

foreach ($user in $UsersToCreate) {
    $Password = ConvertTo-SecureString -String 'Pa55w.rd' -AsPlainText -Force
    New-LocalUser -Password $Password -Name $User
}