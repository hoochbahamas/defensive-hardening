# Fail2Ban Intrusion Prevention

**Rank 3: Threat Detection & Response**

Fail2Ban is an intrusion prevention system that monitors system logs (especially SSH authentication) and automatically bans IP addresses that exhibit malicious behavior, such as brute-force login attempts.

## Implemented Controls

- Installed and enabled Fail2Ban on Debian 13
- Configured custom SSH jail for the hardened port (50022)
- Set `maxretry = 4` failed attempts within 10 minutes
- Set `bantime = 24 hours`
- Used `backend = systemd` to properly read Debian 13 journal logs
- Whitelisted local network range (`192.168.0.0/24`)
- Successfully tested banning of attacking IPs

## Security Benefit

Fail2Ban adds an **active defense layer** on top of SSH hardening and 2FA. While SSH + 2FA makes successful logins very difficult, Fail2Ban automatically blocks attackers who repeatedly try to guess credentials, reducing log noise and preventing resource exhaustion.

## Key Configuration

- Jail file: `jail.local`
- Filter: Uses improved custom filter for Debian 13 `sshd-session` logs

## Status

**Completed and Tested**

- Fail2Ban successfully detects failed login attempts
- Automatically bans offending IPs after threshold is reached
- Tested with multiple invalid username attempts from another machine

## Verification Command

```bash
sudo fail2ban-client status sshd
