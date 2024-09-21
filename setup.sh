#!/bin/bash

# Color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if a project name was provided
if [ -z "$1" ]; then
  echo -e "${RED}Usage: go-script <project-name>${NC}"
  exit 1
fi

PROJECT_NAME=$1

# Step 1: Create project directory
echo -e "${YELLOW}Creating project directory '$PROJECT_NAME'...${NC}"
mkdir -p "$PROJECT_NAME"

# Step 2: Navigate to project directory
cd "$PROJECT_NAME" || exit

# Step 3: Initialize Go module
echo -e "${YELLOW}Initializing Go module in $PROJECT_NAME...${NC}"
go mod init "$PROJECT_NAME"

# Step 4: Install Gin framework
echo -e "${YELLOW}Installing Gin web framework...${NC}"
go get -u github.com/gin-gonic/gin

# Step 5: Create project directory structure
echo -e "${YELLOW}Setting up project directory structure...${NC}"

mkdir -p api/controller
mkdir -p api/repository
mkdir -p api/routes
mkdir -p api/service
mkdir -p infrastructure
mkdir -p models
mkdir -p util

# Create main directory and main.go
mkdir -p main
touch main/main.go

# Create Dockerfile and docker-compose.yml
touch Dockerfile docker-compose.yml

# Step 6: Create .env file
cat <<EOL > .env
# Sample .env file

# Database Configuration
DB_HOST=localhost
DB_PORT=5432
DB_USER=username
DB_PASSWORD=password
DB_NAME=dbname

# Other Configuration
PORT=8080
EOL

echo -e "${GREEN}Project structure for '$PROJECT_NAME' setup complete!${NC}"
