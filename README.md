# Defensive Hardening

**Cyber Security Analyst Portfolio**

Practical defensive security hardening techniques implemented on Debian 13 Linux.

This repository demonstrates my understanding of **attack surface reduction**, **defense-in-depth**, and **security posture improvement** on Linux systems.

## Top 5 Hardening Controls

| Rank | Control Area                        | Status      | Key Techniques Used                     |
|------|-------------------------------------|-------------|-----------------------------------------|
| 1    | SSH Access Hardening                | Completed   | Port 50022, Key Auth + 2FA, Rate limiting |
| 2    | Fail2Ban Intrusion Prevention       | Completed   | Custom SSH jail, IP banning             |
| 3    | UFW Firewall Hardening              | Completed   | Default-deny policy, strict rules       |
| 4    | System Auditing & Logging           | In Progress | auditd, verbose SSH logging             |
| 5    | Security Auditing (Lynis)           | Planned     | CIS Benchmark style scanning            |

## Technologies Used
- Debian 13
- OpenSSH + PAM + Google Authenticator
- Fail2Ban
- UFW (Uncomplicated Firewall)
- auditd

## Repository Structure
- `linux/debian/` – All Debian 13 hardening configurations
- `docs/` – Methodology and lessons learned
- `scripts/` – Automation scripts (coming soon)

## Skills Demonstrated
- Defense-in-Depth implementation
- Least Privilege enforcement
- Multi-factor Authentication
- Intrusion Prevention
- Security Monitoring & Logging
- Technical Documentation

---

*Actively maintained as part of my journey to become a Cyber Security Analyst.*
Last updated: March 2026
