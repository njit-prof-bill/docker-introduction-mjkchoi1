# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Create the logs directory
RUN mkdir -p logs

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
