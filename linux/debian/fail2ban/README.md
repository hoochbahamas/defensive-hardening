# Fail2Ban Intrusion Prevention

**Rank 3: Threat Detection & Response**

Fail2Ban is an intrusion prevention system that monitors log files and automatically bans IP addresses that show malicious behavior (primarily brute-force attacks).

## Implemented Controls

- Installed Fail2Ban
- Configured custom SSH jail with aggressive settings
- Set ban time to 24 hours (86400 seconds)
- Whitelisted trusted IP ranges (e.g., local network)
- Enabled logging for banned IPs

## Why This Matters

While SSH hardening (Rank 1) and 2FA (Rank 2) make unauthorized login very difficult, Fail2Ban adds an **active defense layer** by automatically blocking attackers who attempt brute-force or other suspicious activity.

This reduces log noise and prevents resource exhaustion from repeated attacks.

## Configuration Files

- `jail.local` → Main jail configuration
- (Future) Custom actions if needed

## Status

**In Progress**

Current focus: Protecting the hardened SSH service on port 50022.

---

**Part of the Defensive Hardening Portfolio**
