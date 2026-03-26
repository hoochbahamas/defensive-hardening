# SSH Hardening

**Rank 1: SSH Service Hardening**

This section contains the hardened SSH configuration for my Debian 13 system.

## Implemented Controls

- Changed default SSH port from **22** to **50022**
- Disabled password authentication (`PasswordAuthentication no`)
- Enforced key-based authentication only (`PubkeyAuthentication yes`)
- Enabled support for multi-factor authentication (2FA)
- Restricted login to specific user (`AllowUsers rober`)
- Applied brute-force protection (`MaxAuthTries`, `LoginGraceTime`, `MaxSessions`)
- Enabled verbose logging for better monitoring and Fail2Ban integration
- Applied additional security best practices (`StrictModes`, `PermitEmptyPasswords no`, etc.)

## Why This Matters

Changing the SSH port and disabling password login significantly reduces the attack surface against automated brute-force attacks. Combining this with SSH keys and 2FA provides strong defense-in-depth for remote access.

## Files Included

- `sshd_config` – Main hardened configuration file
- (Future) Setup and testing documentation

## Status

**Completed & Tested**

- SSH now runs on port 50022
- Password login disabled
- Key authentication enforced
- Ready for 2FA integration

## Testing Command

```bash
ssh -p 50022 rober@192.168.0.16
