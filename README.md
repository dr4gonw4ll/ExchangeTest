# ExchangeTest
Below are the resources to perform configuration review and pentest of MS Exchange environment.

https://github.com/gdedrouas/Exchange-AD-Privesc/blob/master/DomainObject/DomainObject.md
https://github.com/ANSSI-FR/AD-control-paths
https://github.com/Microsoft/FastTrack/tree/master/scripts/Find-MailboxDelegates
https://github.com/BloodHoundAD/BloodHound/releases - could not download
https://github.com/ExchangeAnalyzer/ExchangeAnalyzer
https://github.com/sensepost/ruler
https://github.com/dafthack/MailSniper
https://github.com/vfedenko/PowerShellScripts

#PS Signing

$cert = Get-ChildItem -Path Cert:\CurrentUser\My -CodeSigningCert
Set-AuthenticodeSignature -FilePath '.\myscript.ps1' -Certificate $cert

#PS Connection to Exchange Server

$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://<NAME> -Authentication <<>> -Credential $UserCredential
Import-PSSession $Session -DisableNameChecking
