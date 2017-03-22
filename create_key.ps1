$key = New-Object byte[](512)
$rng = [System.Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($key)
[Convert]::ToBase64String($key) | Out-File "D:\PowerShell\encrypted_data_bag_secret" -Encoding "UTF8"
[array]::Clear($key, 0, $key.Length)
