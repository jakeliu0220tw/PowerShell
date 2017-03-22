# new variable
new-variable -Name Pi -Value 3.1415926
$Pi

# declare array
$RainbowColor = "red", "orange", "yellow", "green", "blue", "violet"
$RainbowColor

$a = 1..10
$a


# assign type to variable
[int] $b = 15
$b.GetType()

# assign type to array
[int[]]$Age = 11,12,13,14,15
$Age.GetType()

# access element in array
$Age[0]
$Age[0] = 1
$Age[0]

$Age[-1]
$Age[-1] = 100
$Age[-1]

# add new element to array
$a += 11
$a

# merge two array
$x = "Hello, "
$y = "Windows Powershell!"
$z = $x + $y
$z

# array length
$a.Length

# hash
$phonetable = @{"jake" = "4567"; "frank" = "5678"; "west" = "1024"}
$phonetable

# get hash element
$phonetable."jake"
$phonetable."jake" = "9999"
$phonetable."jake"

# get hash's keys, values
$phonetable.keys
$phonetable.values
