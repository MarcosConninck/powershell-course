Clear-Host

# Script to stop or run a service
'Please provide the name of the service: '
$Service = Read-Host
$ServiceObject = Get-Service -Name $Service
'The service named ' + $ServiceObject.Name + ' has the status ' + $ServiceObject.status
if ($ServiceObject.Status -eq 'Stopped') {
    'Should I start the service ' + $ServiceObject.Name + ' (Y/N):'
    $Answer = Read-Host
    if ($Answer -eq 'y') {
        'Starting the service ' + $ServiceObject.Name
        Start-Service -InputObject $ServiceObject
    }
    else {
        'Ok, I will not Start the service ' + $ServiceObject.Name
    }
}
elseif ($ServiceObject.Status -eq 'Running') {
    'Should I stop the service ' + $ServiceObject.Name + ' (Y/N):'
    $Answer = Read-Host
    if ($Answer -eq 'y') {
        'Stopping the service ' + $ServiceObject.Name
        Stop-Service -InputObject $ServiceObject
    }
    else {
        'Ok, I will not Stop the service ' + $ServiceObject.Name
    }
}
else {
    "The current status of the service is " + $ServiceObject.Status + " so i can't do nothing"
}

'The service named ' + $ServiceObject.Name + ' has the status ' + $ServiceObject.status
