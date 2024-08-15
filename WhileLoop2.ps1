Clear-Host

'Pick the service'
$ServiceName = Read-Host
$ServiceObject = Get-Service -Name $ServiceName

while ($ServiceObject.Status -eq 'Stopped') {
    $ServiceObject.Name + ' has the status ' + $ServiceObject.Status + ' , waiting to start'
    $ServiceObject = Get-Service -Name 'Spooler'
    Start-Sleep -Seconds 1
}

'Ok, service name ' + $ServiceObject.Name + ' has the status ' + $ServiceObject.Status
