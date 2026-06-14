#!/bin/bash

API_KEY="API-KEY"
BLACKLIST="/tmp/abuseipdb-blacklist.txt"
CONFIDENCE=70
IPSET_NAME="abuseipdb_blocklist"

echo "[$(date)] Starting AbuseIPDB ipset update..."

# Create ipsets if they don't exist
sudo ipset list ${IPSET_NAME}_v4 >/dev/null 2>&1 || sudo ipset create ${IPSET_NAME}_v4 hash:ip family inet
sudo ipset list ${IPSET_NAME}_v6 >/dev/null 2>&1 || sudo ipset create ${IPSET_NAME}_v6 hash:ip family inet6

# Download latest malicious IPs
curl -s -G https://api.abuseipdb.com/api/v2/blacklist \
  -d "confidenceMinimum=$CONFIDENCE" \
  -H "Key: $API_KEY" \
  -H "Accept: text/plain" | sort -u > "$BLACKLIST"

echo "Downloaded $(wc -l < "$BLACKLIST") IPs (Confidence >= $CONFIDENCE)"

# Add IPs to the correct ipset
while read -r ip; do
    if [[ $ip =~ : ]]; then
        sudo ipset add ${IPSET_NAME}_v6 "$ip" -exist 2>/dev/null
    else
        sudo ipset add ${IPSET_NAME}_v4 "$ip" -exist 2>/dev/null
    fi
done < "$BLACKLIST"

# Ensure firewall rules are linked
sudo iptables -I INPUT -m set --match-set ${IPSET_NAME}_v4 src -j DROP 2>/dev/null || true
sudo ip6tables -I INPUT -m set --match-set ${IPSET_NAME}_v6 src -j DROP 2>/dev/null || true

echo "[$(date)] Completed. IPv4: $(sudo ipset list ${IPSET_NAME}_v4 -t | grep "Number of entries" | awk '{print $4}') | IPv6: $(sudo ipset list ${IPSET_NAME}_v6 -t | grep "Number of entries" | awk '{print $4}')"
