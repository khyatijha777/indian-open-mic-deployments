# indian-open-mic-deployments

This repository contains the deployment configuration and scripts for running both the UI and API services using Docker.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed and running
- Bash shell (`deploy.sh` is a shell script)

## Deployment Steps

1. **Clone this repository**

   ```bash
   git clone https://github.com/khyatijha777/indian-open-mic-deployments.git
   cd indian-open-mic-deployments
2. Make the script executable
   ```
   chmod 777 deploy.sh
   
3. Run th deployment script
   ```bash
   ./deploy.sh
  
  This script will:
   Build Docker images for both the UI and API
   Start the containers
   
4. Access the Applications

UI: http://localhost:3000

API: http://localhost:9000

5. To STop the conatiners:
   ```bash 
    docker-compose down
