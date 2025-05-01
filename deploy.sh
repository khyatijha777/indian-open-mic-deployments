#!/bin/bash

# Stop the script if any command fails
set -e

# Clear the screen
clear

echo "============================================"
echo " 🚀 Starting Indian Open Mic App Deployment "
echo "============================================"




rm -rf indian-open-mic-ui indian-open-mic-api
rm -rf indian-open-mic-ui indian-open-mic-ui


# clone frontend
git clone https://github.com/khyatijha777/indian-open-mic-ui.git

# clone backend
git clone https://github.com/khyatijha777/indian-open-mic-api.git

# Download .env.production from S3
aws s3 cp s3://indiaopenmic-media-uploads/.env .env

# Load environment variables (if you have a .env file)
export $(grep -v '^#' .env | xargs)  # Optional if needed

# Build fresh images
docker-compose build

# Stop old containers if running
docker-compose down

# Bring up new containers
docker-compose up -d

echo "============================================"
echo " ✅ Deployment Finished Successfully! "
echo "============================================"
