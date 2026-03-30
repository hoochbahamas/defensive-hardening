# System Auditing & Logging

**Rank 4: Visibility & Monitoring**

This section focuses on improving system visibility and detection capabilities through proper auditing and logging.

Good auditing and logging are essential for turning raw system events into actionable security intelligence — the foundation of any SIEM or monitoring system.

## Implemented Controls

- Installed and configured `auditd` for kernel-level auditing
- Added audit rules for authentication events, SSH configuration changes, user/group modifications, and privilege escalation
- Enabled `rsyslog` for system logging
- Set up basic log collection and retention
- Created the foundation for feeding logs into a central monitoring dashboard (future SIEM/SOAR plans)

## Why This Matters

Prevention tools stop many attacks, but without strong auditing and logging you have no visibility. Proper auditing allows you to:
- Detect suspicious activity
- Investigate security incidents
- Correlate events across tools
- Feed high-quality data into dashboards and alerting systems

## Key Tools Configured

- **auditd** – Kernel-level system call and event auditing
- **rsyslog** – Traditional system logging
- Verbose SSH logging (from Rank 1)

## Status

**Completed**

## Verification Commands

```bash
# Check auditd status
sudo systemctl status auditd

# View loaded audit rules
sudo auditctl -l

# View recent authentication events
sudo ausearch -m USER_LOGIN -ts recent
