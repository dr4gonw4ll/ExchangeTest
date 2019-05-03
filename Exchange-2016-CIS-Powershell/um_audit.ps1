$servername = hostname
$filename = $servername + "_um.txt"

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010

echo "Get-UMService" >> $filename
echo "Get-UMService"
Get-UMService | fl -property Identity,UMStartUpMode >> $filename

echo "Get-UMDialPlan" >> $filename
echo "Get-UMDialPlan"
Get-UMDialPlan | fl -property Identity,VoIPSecurity >> $filename

echo "Get-UMMailboxPolicy" >> $filename
echo "Get-UMMailboxPolicy"
Get-UMMailboxPolicy | fl -property Identity,AllowPinlessVoiceMailAccess >> $filename

echo "Get-AdminAuditLogConfig" >> $filename
echo "Get-AdminAuditLogConfig"
Get-AdminAuditLogConfig | fl -property Identity,AdminAuditLogCmdlets,AdminAuditLogEnabled >> $filename