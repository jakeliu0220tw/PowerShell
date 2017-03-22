clear

#Getmac
#Get-WmiObject win32_networkadapterconfiguration | select description, macaddress
#Get-CimInstance win32_networkadapterconfiguration | select description, macaddress 

$controller = Get-WmiObject win32_networkadapterconfiguration | select description, macaddress | where {$_.description -like "*Family Controller"} | select macaddress | format-list
$controller | Out-File -encoding ASCII 'c:\\chef\\macaddress'
$macaddress = Get-Content 'c:\\chef\\macaddress'
$macaddress.Replace('macaddress : ', '').Replace(':', '-') | Out-File -encoding ASCII 'c:\\chef\\macaddress'
