Clear-Host
########################################
# -  Display 'PowerShell' 3 times
$Name = "PowerShell
"
$Name * 3

########################################
# Let PowerShell ask for your name in a prompt and display a "welcome your name"
'Give me your name: '
$Name = Read-Host
'Welcome ' + $Name

########################################
# Let the script ask for the name of a service you want to display and show 
# that service on the screen. So if someone types *spooler* then the spooler 
# service showld be shown on your screen.
'Give the name of the service you want to see on screen: '
$Service = Read-Host
Get-Service -Name $Service