# New-EnterpriseUser.ps1
Import-Module ../modules/ADUser.psm1
Import-Module ../modules/Logging.psm1

Assert-ValidUserInput $UserData
New-EnterpriseADUser -User $UserData
Write-AuditLog -Action "UserCreated" -Target $UserData.SamAccountName
