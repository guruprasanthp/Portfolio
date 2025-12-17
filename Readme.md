DevOps Operations & Automation Toolkit (Linux • Ansible • MySQL • PHP • Networking)

This repository demonstrates hands-on DevOps capabilities aligned to a production support + automation role:
- Triage & resolution of escalations across software/hardware/networking
- Tools & processes supporting software release cycles
- Automation codebase maintenance (Ansible + shell tooling)
- Server updates, security patching, and post-update log/health reviews
- Monitoring/logging enablement and operational runbooks
- Linux command-line administration, Git workflows, and on-call readiness


Highlights mapped to the Job Description

Responsibilities Coverage
- Triage & resolve escalations: `docs/incident-triage.md`, `scripts/network_triage.sh`, `scripts/log_review.sh`
- release support tooling: `docs/release-runbook.md`, `scripts/rollback.sh`, GitHub Actions CI
- Automation codebase: `ansible/roles/`, standardized playbooks, inventory structure
- Software updates & security patching: `ansible/playbooks/security_patching.yml`, `docs/security-patching.md`
- Monitoring & log review after changes: `ansible/playbooks/monitoring_agent.yml`, `docs/monitoring-logging.md`
- Regular cadence security updates across networks:** patch workflow + reboot strategy + verification checklist
- Testing automation / frameworks: GitHub Actions lint + syntax checks for Ansible + shellcheck
- Collaboration:** clear documentation, runbooks, and change log templates

Requirements Coverage
- Linux administration: baseline hardening, patching, logging checks
- MySQL: backup scripts + operational guide (`docs/mysql-ops.md`)
- PHP: deployment playbook template (`ansible/playbooks/php_app_deploy.yml`)
- git: branching + CI checks (`.github/workflows/ci.yml`)
- Networking concepts: triage scripts + cheat sheet (`docs/networking-cheatsheet.md`)
- Ansible configuration mgmt:** roles + playbooks for baseline, monitoring, patching
- Protocols: TCP/IP, SSH, HTTPS, SCP referenced in docs/scripts

---

 Quick Start (Local validation)

- Prerequisites
- Ansible (recommended)
- Python 3.x
- `shellcheck` (optional but recommended)
Validate Ansible
```bash
cd ansible
ansible-playbook --syntax-check playbooks/linux_baseline.yml -i inventories/dev/hosts.ini
