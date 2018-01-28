
[String]$pwd ="vanaja"
$PasswordFile = "C:\Users\Sairam\Desktop\ps\Password.txt"
$KeyFile = "C:\Users\Sairam\Desktop\ps\AES.key"
$Key = New-Object Byte[] 16   # You can use 16, 24, or 32 for AES
[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($Key)
$Key | out-file $KeyFile

$Password = $pwd | ConvertTo-SecureString -AsPlainText -Force
$Password | ConvertFrom-SecureString -key $Key | Out-File $PasswordFile