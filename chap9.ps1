cls

# code block
write-host "# code block"
$a = {
  $x = 2
  $y = 3
  $x * $y
}
&$a

# code block + pipeline
write-host "# code block + pipeline"
$lsName = {
  foreach($item in $input) {$item.Name}
}
dir | &$lsName
ps | &$lsName

# function
write-host "# function"
function MySimpleFun {
  write-host "my simple function"
}
MySimpleFun

# function + parameters
write-host "# function + parameters"
function show-str {
  write-host $args[0]
}
show-str HelloWorld

# function + parameters + args[]
write-host "# function + parameters + args[]"
function show-para {
  for($i=0; $i -lt $args.length; $i++) { write-host $args[$i]}
}
show-para hello world powershell


# function + predefined parameters
write-host "# function + predefined parameters"
function AplusB([int]$x, [int]$y) { $x + $y}
AplusB 1 99
AplusB -x 2 -y 98
AplusB -y 97 -x 3


# function + default value
write-host "# function + default value"
function CplusD ([int]$x=10, [int]$y=20) { $x + $y}
CplusD

# function + Param
write-host "# function + Param"
function EplusF() {
  Param($x, $y)
  $x + $y
}
EplusF 11 22
EplusF -x 33 -y 44

# return value
write-host "# return value"
function AandB($x, $y) {
  $x + $y
  $x - $y
  $x * $y
}
function CandD($x, $y) {
  $x + $y
  $x - $y
  return $x * $y
}
AandB -x 10 -y 2
CandD -x 10 -y 2

# pipeline input
write-host "# pipeline input"
function showeach() { 
  foreach($item in $input) { $item.Name }
}
dir | showeach

# pipeline input 2
write-host "# pipeline input 2"
function foo_1 {
  for($i=1; $i -lt 10; $i++) { $i }
}
function foo_2 {
  foreach($i in $input) { $i * 100 + 1 }
}
foo_1 | foo_2

# begin, process, end
write-host "# begin, process, end"
function foo {
  begin { 
    "begin"
    $i=1 
  }
  process { 
    "process" + $i
    $i++
  }
  end { "end" }
}
dir | foo

# filter
write-host "# filter"
function foo-fun { $_.Name }
filter foo-fill { $_.Name }
function foo-good {
  begin { "begin" }
  process { $_.Name}
  end { "end" }
} 
write-host "dir | foo-fun"
dir | foo-fun
write-host "dir | foo-fill"
dir | foo-fill
write-host "dir | foo-good"
dir | foo-good

# variable scope
write-host "# variable scope"
$var = "A"
function scope {
  "2- " + $var

  $var = "B"
  "3- " + $var
}
"1- " + $var
scope
"4- " + $var

# variable scope : script
write-host "# variable scope : script"
$var = "A"
function scope_script {
  "2 -" + $var
  $script:var = "B"
  "3 -" + $var
}
"1 -" + $var
scope_script
"4 -" + $var

# variable scope : private
write-host "# variable scope : private"
$var = "A"
function chgvar { 
  $var
  $private:var = "B"
  $var
  boo 
}
function boo { $var }
$var
chgvar
$var