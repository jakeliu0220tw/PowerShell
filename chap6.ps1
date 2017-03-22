$a = 10
$a++
$a

# '-eq'
09 -eq 009
"09" -eq "009"

# '-lt'
[int] "678" -lt [int] "678.4"
[int] "678" -lt [int] "678.6"

# '-gt'
[int[]]$b = 1,2,3,4,5,6
$b
$c = $b -gt 3
$c

# '-contains'
$b -contains 3
$b -contains 7

# '-like'
"goodmans" -like "good*"


