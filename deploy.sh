#!/bin/bash

echo "Deploying to production..."
git pull
echo "Docker restarting..."
docker-compose restart
echo "Done!"