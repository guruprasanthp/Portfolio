CI/CD Pipeline – Git → Jenkins → Ansible → Docker

This repository demonstrates a complete CI/CD pipeline where application code flows from Git → Jenkins → Ansible → Docker.

The goal of this project is to showcase practical DevOps skills:
- Automating builds and tests with **Jenkins**
- Building Docker images for the application
- Using Ansible to deploy and manage containers on remote servers

---

 Tech Stack

- Source Control: Git (GitHub)
- CI/CD: Jenkins (Pipeline-as-Code using `Jenkinsfile`)
- Configuration Management / Deployment: Ansible
- Containerization: Docker
- Language: Python (Flask) / Node.js (you can adapt)

---

Repository Structure

```text
app/                   # Application source code and tests
  ├─ src/
  ├─ tests/
  ├─ requirements.txt
  └─ Dockerfile

jenkins/
  └─ Jenkinsfile       # Pipeline definition (CI/CD)

ansible/
  ├─ inventory.ini     # Target hosts
  └─ deploy_docker.yml # Ansible playbook to deploy Docker container

README.md              # Project documentation
