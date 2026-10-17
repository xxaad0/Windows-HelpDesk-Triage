# Windows IT Helpdesk Troubleshooting Toolkit

## Project Overview

Diagnostic tool kit built using PowerShell to automate common Windows IT helpdesk troubleshooting tasks.

It showcases basics of networking diagnostics, Windows administration, PowerShell scripting, and technical documentation.

## Features

### 1. Network Connectivity Test

- Checks connectivity to `1.1.1.1` via `Test-Connection`.
- Sends four ICMP Echo Request packets.
- Shows network latency times.

### 2. DNS Resolution Test

- Resolves `bing.com` using `Resolve-DnsName`.
- Shows IPv4 and IPv6 DNS records.
- Useful for troubleshooting any DNS resolution issues.

### 3. Disk Space Monitoring

- Uses `Get-PSDrive` cmdlet to check available C: drive space.
- Available space is converted to gigabytes.
- Shows a warning if less than 10 GB of disk space is available.

### 4. Windows Service Checking

- Makes use of the `Get-Service` cmdlet to monitor the Print Spooler service.
- Detects if the service is running.
- Issues a warning if the service is not running.

### 5. Diagnostic Report Generation

- Stores the diagnostic information into a local text file.
- Facilitates troubleshooting purposes.

## Technologies

- Windows
- PowerShell
- Git and GitHub

## How to Run

1. Clone/download this repository.
2. Launch PowerShell in the project directory.
3. Execute `.\diagnose.ps1`.

To save the report, run the following command:

`.\diagnose.ps1 *> .\diagnose-report.txt`

## Security Issues

The script contains read-only checks without automatic changing any system parameters, restarting any services or deleting any files.

Diagnostic reports locally are ignored by Git due to the presence of host names and other system information.

## Skills Used

- Windows troubleshooting
- Checking network and DNS connection
- Windows services administration basics
- Functions in PowerShell and conditionals
- Monitoring of the disk space
- Documentation and technical reporting
