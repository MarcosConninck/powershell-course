Clear-Host

# Creating directories from .txt
$Directories = Get-Content -Path .\files\DirToCreate.txt

foreach ($Directory in $Directories) {
    New-Item -Path .\files\new-folder -ItemType "directory" -Name $Directory
}