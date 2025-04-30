# Step 1: Use the official Node.js image from Docker Hub
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY backend/package*.json ./
RUN npm install

# Step 4: Copy the rest of the application
COPY backend/ ./

# Step 5: Expose the port the app runs on
EXPOSE 5000

# Step 6: Define the command to run your application
CMD ["npm", "start"]
