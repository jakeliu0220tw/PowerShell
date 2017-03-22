# -and
(3 -eq 3) -and (2 -eq 5)

# -or
(3 -eq 3) -or (2 -eq 5)

# -replace
"powershell" -replace "e", "5"
"powershell" -replace "a", "z"
$var = "powershell"
$var = $var -replace "e", "5"
$var

# -replace in array
$var = @("aaa","bbb","azaz","ccc")
$var = $var -replace "a","z"
$var

# -is, check data type
123 -is [int]
123 -is [string]

# GetType()
$var.GetType()
$a = 123
$a.GetType()
