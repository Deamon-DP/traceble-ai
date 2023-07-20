# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory to /app
WORKDIR /tra
COPY package*.json ./

RUN npm install
RUN npm install -g express-generator
RUN npm install express

# Copy the rest of the application code to /app
COPY . .


# Expose the ports that your Node.js application is running on (if your app uses them)
EXPOSE 3000

# Define the command to start the app
CMD ["npm", "start"]