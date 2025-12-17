Security Patching & Updates (Cadence + Verification)

Why this matters
Regular security patching reduces exposure to CVEs and keeps systems compliant.

Cadence
- Weekly: standard OS updates (non-prod first)
- Monthly: full patch cycle + reboot window
- Emergency: critical CVEs (out-of-band)

Process Overview
1. Identify targets (inventory + owner + maintenance window)
2. Pre-checks:
   - Disk space, uptime, critical services
   - Snapshot/backup (VM snapshot or image)
3. Apply updates with Ansible (`ansible/playbooks/security_patching.yml`)
4. Reboot if required (controlled)
5. Post-checks:
   - service health
   - monitoring green
   - log review: auth/system/app logs
6. Document changes + close change ticket

Verification Checklist
- `uname -a` updated kernel (if applicable)
- `systemctl --failed` returns clean
- critical ports open: 22/443 etc
- application smoke test passes

Rollback
- Revert VM snapshot or deploy previous image
- Restore configuration from Git-controlled Ansible roles
