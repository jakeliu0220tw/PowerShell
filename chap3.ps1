clear
Get-PSDrive
Get-PSDrive C | format-list
Get-PSDrive Function | format-table

# new ps drive
#New-PSDrive -Name MyMusic -PSProvider FileSystem -Root "C:\Users\jakeliu\Music"

Get-PSDrive
cd Alias:
cd C:
cd Cert:
cd D:
cd Env:
cd Function:
cd HKCU:
cd HKLM:
cd MyMusic:
cd Variable:
cd WSMan:

cd C:\AtGamesConfig
dir
Invoke-Item C:\AtGamesConfig\Run-service.yml

