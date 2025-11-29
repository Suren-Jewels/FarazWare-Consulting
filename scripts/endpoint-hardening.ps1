# 🛡️ Endpoint Hardening Script for Windows
# Author: Suren Jewels

Write-Host "Applying security policies..."

# Enable firewall
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

# Enable Defender
Set-MpPreference -DisableRealtimeMonitoring $false

# Enforce BitLocker
Enable-BitLocker -MountPoint "C:" -EncryptionMethod XtsAes256 -UsedSpaceOnly

# Disable SMBv1
Set-SmbServerConfiguration -EnableSMB1Protocol $false

Write-Host "✅ Endpoint hardening complete."
