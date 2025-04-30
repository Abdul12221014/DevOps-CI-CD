# Use official Node.js image
FROM node:14

# Set working directory
WORKDIR /app

# Copy backend package files and install
COPY package*.json ./
RUN npm install

# Copy the rest of the backend code
COPY . .

# Expose backend port
EXPOSE 5000

# Start the backend server
CMD ["npm", "start"]
