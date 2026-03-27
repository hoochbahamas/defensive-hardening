#!/bin/bash
# =====================================================
# Rank 3: Fail2Ban Setup Script
# Defensive Hardening Portfolio - Debian 13
# =====================================================

set -e

echo "[+] Starting Fail2Ban installation and configuration..."

# Install Fail2Ban
sudo apt update
sudo apt install -y fail2ban

# Create jail.d directory (best practice)
sudo mkdir -p /etc/fail2ban/jail.d

# Copy the custom jail configuration
sudo cp "$(dirname "$0")/jail.local" /etc/fail2ban/jail.d/sshd.local

# Enable and start the service
sudo systemctl enable fail2ban
sudo systemctl restart fail2ban

echo "[+] Fail2Ban has been successfully installed and configured."
echo ""
echo "Current SSH jail status:"
sudo fail2ban-client status sshd
echo ""
echo "To test banning, try multiple failed logins from another machine."
echo "To unban an IP: sudo fail2ban-client set sshd unbanip <IP>"
