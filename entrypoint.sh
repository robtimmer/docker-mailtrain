#!/bin/bash

# Navigate to the working directory
cd /opt/mailtrain

# Fetch Mailtrain files
git init
git remote add origin git://github.com/andris9/mailtrain.git
git fetch origin
git checkout -b master --track origin/master

# Install required node packages
npm install --no-progress --production

# Start mailtrain
NODE_ENV=production npm start