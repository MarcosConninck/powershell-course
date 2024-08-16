Clear-Host

$Array = @()
$Array += 'Pete'
$Array += 'Linda'
$Array += 'John'

# 'you are great! ' + $Array[-1]

foreach ($Item in $Array) {
    'That is a nice name ' + $Item
}

