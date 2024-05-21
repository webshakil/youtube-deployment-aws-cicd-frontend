# Use a Node.js image as a base
FROM node:20 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project directory to the working directory
COPY . .

# Build the React application
RUN npm run build

# Expose port 4000 to allow external access (optional)
EXPOSE 3000

# Command to run the React application
CMD ["npm", "start"]
