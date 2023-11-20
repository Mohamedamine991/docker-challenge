# Use the official Node.js image with tag 18-alpine as the base image.
FROM node:18-alpine

# Set the working directory inside the container to /usr/src/app.
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if they exist) from the host into the container's working directory.
COPY package*.json ./

# Run the 'npm install' command to install project dependencies in production mode.
RUN npm install --only=production

# Copy the contents of the ./src directory from the host into the container's working directory.
COPY ./src ./src

# Define the default command to run when the container starts.
CMD npm start
