#!/bin/bash

# Create the directories
mkdir -p /app
mkdir -p /app/developers
mkdir -p /app/testers
mkdir -p /app/prodSupport

# Set permissions in directories
chmod 777 /app
chmod 775 /app/developers
chmod 775 /app/testers
chmod 770 /app/prodSupport

# Change group for directories
chown :developers /app/developers
chown :testers /app/testers
chown :prodSupport /app/prodSupport

# Add SETGID for directories
chmod g+s /app/developers # This is the symbolic method for SETGID
chmod 2775 /app/testers # This is the octal value for SETGID
chmod g+s /app/prodSupport
