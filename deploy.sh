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

# Build fresh images
docker-compose build

# Stop old containers if running
docker-compose down

# Bring up new containers
docker-compose up -d

echo "============================================"
echo " ✅ Deployment Finished Successfully! "
echo "============================================"
