cls

$wmi = get-wmiobject win32_processor
$wmi

# write-host cmdlet
"# write-host cmdlet"
write-host "this is a message"
write-host "another message" -ForegroundColor red -BackgroundColor yellow

# if block
"# if block"
if ($wmi.Architecture -eq 0) {
  "x86 cpu"
}
elseif ($wmi.Architecture -eq 9) {
  "x64 cpu"
}
else {
  "???"
}
write-host "all from wmi interface"

# switch block
"# switch block"
Switch ($wmi.Architecture) {
  0 {
    "x86 cpu"
    break
  }
  9 {
    "x64 cpu"
    break
  }
  default {
    "???"
    break
  }
}
write-host "all from wmi interface"

# ForEach block
"# ForEach block"
$array = @(1..5)
ForEach ($item in $array) { 
  write-host "item is " $item 
}


# pipeline + foreach
"# pipeline + foreach"
dir | foreach -process { $_.length / 1024 }

# for loop
"# for loop"
for ($i=0; $i -lt 10; $i++) {
  write-host "i = " $i
}

# while loop
"# while loop"
$i = 1
while ($i -lt 10) {
  write-host "i is " $i
  $i++
}

# loop tag
"# loop tag"
$i = 0
:myloop while(1) {
  $i++
  write-host "myloop: $i"

  if ($i -gt 100) {
    break myloop
  }
}
