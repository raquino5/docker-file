# Use Node as the base image
FROM node:18-alpine

# Set working directory
WORKDIR /Aquino_Ralph_site

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 7775
EXPOSE 7775

# Run react dev server on port 7775
CMD ["npm", "start", "--", "--port", "7775", "--host", "0.0.0.0"]