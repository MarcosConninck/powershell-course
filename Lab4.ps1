Clear-Host

$Services = Get-Service

foreach ($Service in $Services) {
    if ($Service.Name -eq 'Spooler') {
        'Wow, I found the ' + $Service.Name + ' service! Really cool!'
    }
    else {
        'The ' + $Service.Name + ' is a great service!'
    } 
}
