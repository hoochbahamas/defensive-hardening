# Multi-Factor Authentication (2FA)

**Rank 2: Authentication Security**

This section documents the implementation of **Google Authenticator (TOTP)** for SSH on Debian 13.

## What Was Implemented

- Installed `libpam-google-authenticator` package
- Generated TOTP secret key and QR code for the user `rober`
- Configured PAM (`/etc/pam.d/sshd`) to enforce 2FA
- Updated `sshd_config` to enable `ChallengeResponseAuthentication`
- Combined **SSH Key Authentication + 2FA** (true two-factor login)

## Security Benefit

This control ensures that even if an attacker obtains the SSH private key, they still cannot log in without the 6-digit time-based code from the authenticator app on the phone.

This significantly reduces the risk of unauthorized access via stolen or compromised keys.

## Current Status

**Completed & Tested**

Login process now requires:
1. Valid SSH private key
2. 6-digit verification code from Google Authenticator / Microsoft Authenticator / Authy

## Setup Commands Used

```bash
sudo apt install libpam-google-authenticator -y
google-authenticator
