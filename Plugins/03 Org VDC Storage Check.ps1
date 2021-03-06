$Title = "Org VDCs with storage space under x Percent free"
$Header =  "Org VDCs with storage space under x Percent free"
$Comments = "The following OrgVDC(s) are about to run out of storage space"
$Display = "Table"
$Author = "Alan Renouf"
$Version = 1.0

# Start of Settings
# Please specify the Percentage of storage space you would not like your ProviderVDCs to go under.
$StoragePercFree = 20
# End of Settings

$OrgvDC| Where { $_.AllocationModel -eq "AllocationPool" } | Select Name, `
	@{N="StorageRemainingGBPerc";E={[Math]::Round((100-($_.StorageusedGB*100/$_.StorageLimitGB)),2)}} `
	| Where { $_.StorageRemainingGBPerc -lt $StoragePercFree } 