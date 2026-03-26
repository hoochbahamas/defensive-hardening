# Multi-Factor Authentication (2FA)

**Rank 2: Authentication Security**

This section documents the implementation of **Google Authenticator (TOTP)** combined with SSH key authentication on Debian 13.

## Implemented Controls

- Installed `libpam-google-authenticator` package
- Generated TOTP secret key and QR code for the user
- Configured PAM (`/etc/pam.d/sshd`) to enforce 2FA
- Updated `sshd_config` to support `ChallengeResponseAuthentication`
- Used `AuthenticationMethods publickey,keyboard-interactive` to enforce clean Key + 2FA flow
- Disabled password authentication completely

## Security Benefit

This setup ensures that even if an attacker obtains the SSH private key, they still cannot log in without the 6-digit time-based code from the authenticator app.

This creates true two-factor authentication for remote SSH access.

## Account Label Used
- `user@hostname`

## Final Login Flow

1. SSH private key is validated
2. User is prompted for Verification code (TOTP)
3. Enter 6-digit code from authenticator app
4. Successful login (no password prompt)

## Status

**Completed and Tested**

## Testing Command (Example)

```bash
ssh -p 50022 user@ip-address
