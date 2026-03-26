# Defensive Hardening

**Cyber Security Analyst Portfolio**

Practical defensive security hardening techniques implemented on Debian 13 Linux.

This repository demonstrates my understanding of **attack surface reduction**, **defense-in-depth**, and **security posture improvement** through hands-on hardening of Linux systems.

## Top 5 Hardening Controls

| Rank | Control Area                          | Category                      | Key Techniques Used |
|------|---------------------------------------|-------------------------------|---------------------|
| 1    | SSH Service Hardening                 | Access Control                | Port 50022, disable password auth, enforce key authentication |
| 2    | Multi-Factor Authentication (2FA)     | Authentication Security       | Google Authenticator (TOTP) integration with SSH |
| 3    | Fail2Ban Intrusion Prevention         | Threat Detection & Response   | Custom SSH jail, auto-banning, IP whitelisting |
| 4    | UFW Firewall Hardening                | Network Access Control        | Default-deny policy, strict port rules |
| 5    | System Auditing & Logging             | Visibility & Monitoring       | Verbose logging, auditd rules |

## Technologies & Tools Used
- Debian 13
- OpenSSH + PAM
- Google Authenticator (2FA)
- Fail2Ban
- UFW (Uncomplicated Firewall)
- auditd

## Repository Structure
- `linux/debian/ssh/`          → SSH service hardening (Rank 1)
- `linux/debian/2fa/`          → Multi-factor authentication (Rank 2)
- `linux/debian/fail2ban/`     → Intrusion prevention (Rank 3)
- `linux/debian/firewall/`     → Firewall configuration (Rank 4)
- `linux/debian/auditing/`     → Auditing & logging (Rank 5)
- `docs/`                      → Hardening methodology and lessons learned

## Skills Demonstrated
- Defense-in-Depth principles
- Least Privilege enforcement
- Attack Surface Reduction
- Multi-Factor Authentication
- Intrusion Prevention
- Security Monitoring & Logging
- Technical documentation for security teams

---

*This repository is actively maintained as part of my preparation for a Cyber Security Analyst / Blue Team role.*

Last updated: March 2026
