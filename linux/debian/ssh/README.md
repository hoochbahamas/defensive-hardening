# SSH Hardening

**Rank 1: SSH Service Hardening**

This folder contains the hardened SSH configuration for Debian 13.

## Implemented Controls

- Changed default SSH port from 22 to **50022**
- Disabled password authentication completely (`PasswordAuthentication no`)
- Enforced SSH key authentication
- Enabled support for multi-factor authentication
- Applied brute force protection (`MaxAuthTries 3`, `LoginGraceTime 30`)
- Used `AuthenticationMethods publickey,keyboard-interactive` to enforce clean Key + 2FA flow
- Enabled verbose logging for better monitoring

## Key Configuration

The main file is **`sshd_config`**, which includes:
- Port change to 50022
- `AuthenticationMethods publickey,keyboard-interactive`
- Strict security settings

## Status

**Completed & Tested**

Current login flow:
1. SSH Key Authentication
2. Google Authenticator TOTP (2FA)

No password prompt is shown.

## Testing Command

```bash
ssh -p 50022 user@ip-address
