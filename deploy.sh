#!/bin/bash

# Stop the script if any command fails
set -e

# Clear the screen
clear

echo "============================================"
echo " 🚀 Starting Indian Open Mic App Deployment "
echo "============================================"


# Download .env.production from S3
aws s3 cp s3://indiaopenmic-media-uploads/.env .env

# Load environment variables (if you have a .env file)
export $(grep -v '^#' .env | xargs)  # Optional if needed

# Stop old containers if running
docker-compose down

# delete existing images
docker rmi khyatijha777/indian-open-mic-ui
docker rmi khyatijha777/indian-open-mic-api

# Bring up new containers
docker-compose up -d

echo "============================================"
echo " ✅ Deployment Finished Successfully! "
echo "============================================"
