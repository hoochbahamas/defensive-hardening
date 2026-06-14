Automated Malicious IP Blocking with AbuseIPDB + ipset
Project: Defensive Hardening Lab
Status: Completed & Running Daily
Overview
Implemented automated daily ingestion of high-confidence malicious IP addresses from AbuseIPDB, using ipset for efficient blocking instead of individual UFW rules.
Key Features:

Daily cron job at 03:00 AM
Pulls IPs with confidence score ≥ 70
Uses separate ipsets for IPv4 and IPv6
Automatically adds only new IPs (no duplicates)
High performance even with 10,000+ IPs
Integrated with iptables/ip6tables

Technical Implementation:

Script: /usr/local/bin/update-abuseipdb-ipset.sh
Cron schedule: 0 3 * * *
Log file: /var/log/abuseipdb-ipset.log
