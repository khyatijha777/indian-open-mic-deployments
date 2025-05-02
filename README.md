# indian-open-mic-deployments


# Deployments Repository

This repository contains the deployment configuration and scripts for running both the UI and API services using Docker.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed and running
- Bash shell (`deploy.sh` is a shell script)

## Deployment Steps

1. **Clone this repository**

   ```bash
   git clone <your-repo-url>
   cd deployments
2. Run th deployment script
   ```bash
   ./deploy.sh
  
  This script will:
   Build Docker images for both the UI and API
   Start the containers
   
3. Access the Applications

UI: http://localhost:3000

API: http://localhost:9000

4. To STop the conatiners:
   ```bash 
    docker-compose down
