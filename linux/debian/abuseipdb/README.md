## Automated Malicious IP Blocking with AbuseIPDB + ipset
# Rank: 3: Network & Threat Intelligence Hardening
This section documents the implementation of daily automated blocking of malicious IP addresses using AbuseIPDB threat intelligence and ipset for high-performance enforcement.

## Implemented Controls

Daily cron job pulls high-confidence malicious IPs from AbuseIPDB (confidence ≥ 70)
Uses ipset (hash:ip) for both IPv4 and IPv6 instead of individual UFW rules
Automatically adds only new IPs each day (no duplicates)
Links ipset to iptables/ip6tables for efficient blocking
Maintains high performance even with 10,000+ IPs

## Key Files

/usr/local/bin/update-abuseipdb-ipset.sh → Main update script
Cron job (0 3 * * *) → Runs daily at 3:00 AM
/var/log/abuseipdb-ipset.log → Execution log

# NIST SP 800-53 Rev. 5 Mapping

* SI-4 Information System MonitoringCore monitoring of network traffic using external threat intelligence
* SI-4(4) Information System Monitoring | Inbound and Outbound Communications TrafficPrimary control – real-time blocking of known malicious IPs
* SI-3 Malicious Code ProtectionPrevents communication with known malicious sources
* SC-7 Boundary ProtectionStrengthens network perimeter defense through automated blocking

# Security Benefit
Converts real-time external threat intelligence into automated, low-overhead network blocking. Significantly reduces attack surface by preventing known malicious IPs from reaching the system.
Current Status
Completed and Running Daily
