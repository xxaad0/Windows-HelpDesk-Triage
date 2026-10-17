# 1: Network Connectivity Test

function Test-NetworkConnection {
	Write-Host "Internet Connectivity test"

	Test-Connection -ComputerName 1.1.1.1 -Count 4
}

# 2: DNS Test

function Test-DNS {

	Resolve-DNSName -Name bing.com
}


# 3: Disk Space Test

function Get-DiskSpaceReport {
	Write-Host "Disk Space Check.."
	$drive = Get-PsDrive -Name C
	$freeGB = [math]::Round($drive.Free / 1GB, 2)
	Write-Host "Space Available: $freeGB GB"

	if ($freeGB -lt 10) {
		Write-Host "Warning! Disk Space is low"
	}
	
	else {
		Write-Host "Disk Space is good."
	}



}

# 4: Print Service Check

function Get-PrintStatus {

	Write-Host "Print Status Check"
	$service = Get-Service -Name Spooler
	if ($service.status -eq "Running") {
		Write-Host "Print Spooler is Running..."
	}
	else {
		Write-Host "Print Spooler is NOT running!!"
	
	}
}


Test-NetworkConnection
Test-DNS
Get-DiskSpaceReport
Get-PrintStatus