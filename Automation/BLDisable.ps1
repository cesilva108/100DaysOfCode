#Temporarily Disable Bitlocker for USB

$registryPath_CS001 = "HKLM:\SYSTEM\ControlSet001\Policies\Microsoft\FVE"
$registryPath_CS002 = "HKLM:\SYSTEM\ControlSet002\Policies\Microsoft\FVE"
$registryPath_CCS = "HKLM:\SYSTEM\CurrentControlSet\Policies\Microsoft\FVE"

$FDV = "FDVDenyWriteAccess"
$RDV = "RDVDenyWriteAccess"

#ControlSet001
New-ItemProperty -Path $registryPath_CS001 -Name $FDV -Value "0" -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path $registryPath_CS001 -Name $RDV -Value "0" -PropertyType DWORD -Force | Out-Null    

#ControlSet002
New-ItemProperty -Path $registryPath_CS002 -Name $FDV -Value "0" -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path $registryPath_CS002 -Name $RDV -Value "0" -PropertyType DWORD -Force | Out-Null

#CurrentControlSet
New-ItemProperty -Path $registryPath_CCS -Name $FDV -Value "0" -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path $registryPath_CCS -Name $RDV -Value "0" -PropertyType DWORD -Force | Out-Null    