Clear-Host

'Give me the servicename you want to show: '

# $ServiceName is the string
$ServiceName = Read-host

# $ServiceObject is the whole service
$ServiceObject = Get-Service -Name $ServiceName

'De service with the name ' + $ServiceObject.name + ' has the status '+ $ServiceObject.status