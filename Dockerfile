# Use Node.js base image (Alpine version is smaller)
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port and run app
EXPOSE 3000
CMD ["npm", "start"]
