# Multi-Factor Authentication (2FA)

**Rank 2: Authentication Security**

This section documents the implementation of **Google Authenticator (TOTP)** for SSH on Debian 13.

## What Was Implemented

- Installed `libpam-google-authenticator` package
- Generated TOTP secret key and QR code for the user
- Configured PAM to enforce 2FA during SSH login
- Combined SSH Key Authentication + 2FA (true two-factor login)
- Enabled rate limiting on failed authentication attempts

## Security Benefit

Even if an attacker obtains the SSH private key, they still cannot log in without the 6-digit time-based code from the authenticator app on the phone.

This provides strong protection against key compromise and unauthorized remote access.

## Current Status

**Completed**

Login process now requires:
1. Valid SSH private key
2. 6-digit verification code from Google Authenticator / Microsoft Authenticator / Authy

## Account Label Used
- `user@hostname`

## Testing Command (Example)

```bash
ssh -p 50022 user@ip-address
