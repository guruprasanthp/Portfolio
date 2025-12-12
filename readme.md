Pipeline Flow – Git → Jenkins → Ansible → Docker

Developer pushes code to Git (GitHub)

Code changes are pushed to the main or develop branch.

Jenkins is triggered from Git

A Jenkins job (multibranch or webhook-based) detects the change.

Jenkins clones the repo.

Build & Test (Jenkins)

Installs dependencies.

Runs unit tests (pytest, npm test, etc.).

Fails the pipeline if tests fail.

Build Docker Image (Jenkins)

Jenkins builds a Docker image from app/Dockerfile.

Tags the image (e.g., app-name:build-number).

Push Docker Image to Registry (Optional but recommended)

Jenkins logs into Docker Hub / ECR / GCR using credentials.

Pushes the built image for deployment.

Trigger Ansible Deployment (Jenkins)

Jenkins runs an Ansible playbook (ansible/deploy_docker.yml).

The playbook connects to the target server(s) from inventory.ini.

Ansible Deploys Docker Container

Pulls the new Docker image on the remote host.

Stops/removes old container (if running).

Starts a new container with updated image and environment variables.
