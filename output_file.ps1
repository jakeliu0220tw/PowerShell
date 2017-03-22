

#$info = 'username:' + [Environment]::UserName
#$info | Out-File -encoding ASCII 'c:\\chef\\playserver-info.json'

[Environment]::UserName | Out-File -encoding ASCII 'c:\\chef\\playserver-info.json'
