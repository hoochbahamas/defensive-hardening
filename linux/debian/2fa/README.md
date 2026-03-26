# Multi-Factor Authentication (2FA)

**Rank 2: Authentication Security**

This section documents the implementation of **Google Authenticator (TOTP)** combined with SSH key authentication.

## Implemented Controls

- Installed `libpam-google-authenticator`
- Generated TOTP secret key and QR code
- Configured PAM to enforce 2FA after SSH key validation
- Updated `sshd_config` with `AuthenticationMethods publickey,keyboard-interactive`
- Disabled password authentication completely

## Key Files

- `pam-sshd` → PAM configuration for SSH (most important for 2FA)
- `sshd_config` → Main SSH daemon configuration

## Security Benefit

Even if the SSH private key is compromised, login is still protected by a second factor (TOTP).

## Final Login Flow

1. SSH key authentication
2. Prompt for Verification code (6-digit TOTP)
3. Successful login (no password prompt)

## Status

**Completed and Tested**

---

**Part of the Defensive Hardening Portfolio**
