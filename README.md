# defensive-hardening# Defensive Hardening

**Cyber Security Analyst Portfolio**  
Focus: Defensive Security | Attack Surface Reduction | Blue Team Practices

This repository documents practical Linux server hardening techniques I implemented on Debian 13 to strengthen security posture, reduce risk, and improve detection capabilities.

## 🎯 Top 5 Hardening Controls Implemented

| # | Hardening Area                    | Status     | Key Techniques Used                     |
|---|-----------------------------------|------------|-----------------------------------------|
| 1 | SSH Access Hardening              | Completed  | Port change, Key Auth + 2FA, Rate limiting |
| 2 | Fail2Ban Intrusion Prevention     | Completed  | Custom jails, intelligent banning       |
| 3 | UFW Firewall Configuration        | Completed  | Default-deny policy, strict rules       |
| 4 | System Auditing & Logging         | In Progress| auditd, verbose logging                 |
| 5 | Security Auditing (Lynis)         | In Progress| CIS Benchmark style scanning            |

## 🛠️ Technologies Used
- Debian 13
- OpenSSH + PAM + Google Authenticator (2FA)
- Fail2Ban
- UFW (Uncomplicated Firewall)
- auditd + rsyslog
- Lynis

## 📂 Repository Structure

- `/ssh/`          → SSH hardening (port 50022, keys, 2FA)
- `/fail2ban/`     → Intrusion prevention configuration
- `/firewall/`     → UFW strict rules
- `/auditing/`     → System logging and auditing
- `/scanning/`     → Lynis security audits
- `/scripts/`      → Automation scripts
- `/docs/`         → Methodology and lessons learned

## 🧠 Skills Demonstrated
- Defense-in-Depth implementation
- Least Privilege enforcement
- Attack surface reduction
- Security monitoring and logging
- Technical documentation for security operations

---

*This repository serves as a living document of my defensive security journey. Future expansions will include Windows hardening, macOS hardening, and basic SIEM/SOAR concepts.*

Last updated: March 2026
