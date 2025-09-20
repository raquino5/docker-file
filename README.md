# RAquino Coding Assignment 11: Docker File

## Dockerfile Explanation
- `FROM node:18-alpine`: Use Node.js 18 base image for lightweight container
- `WORKDIR /aquino_ralph_site`: Set working directory inside container
- `COPY package*.json ./`: Copy dependency files
- `RUN npm install`: Install project dependencies
- `COPY . .`: Copy the rest of the app
- `EXPOSE 7775`: Expose port 7775 to host
- `CMD ["npm", "start", "--", "--port", "7775", "--host", "0.0.0.0"]`: Start React dev server on container


## Overview
This project sets up a development environment using Docker.
It runs a simple React app that displays `<h1>Codin 1</h1>` on `http://localhost:7775`.

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git
   cd YOUR_REPO

2. Build the Docker image:
   ```bash
   docker build -t aquino_ralph_coding_assignment11 .
