# Step 1: Use the official Node.js image
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY frontend/package*.json ./
RUN npm install

# Step 4: Copy the rest of the frontend application
COPY frontend/ ./

# Step 5: Build the React app for production
RUN npm run build

# Step 6: Install a simple web server to serve the app
RUN npm install -g serve

# Step 7: Expose the port the app runs on
EXPOSE 3000

# Step 8: Run the React app using the web server
CMD ["serve", "-s", "build", "-l", "3000"]
