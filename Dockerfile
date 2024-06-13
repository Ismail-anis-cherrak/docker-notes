#example of a python app 

# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]



#------------------------------------------------------------------------------------

#example of node js and express.js api 

# Use the official Node.js image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application (if needed)
# RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]


#------------------------------------------------------------------------------------

# example of react app with vite 

# Use the official Node.js image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "run", "dev"]


#------------------------------------------------------------------------------------

# example of react app with vite 

# Use the official Node.js image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "run", "dev"]

#------------------------------------------------------------------------------------

# example of flutter app 

# Use the official Dart image as a base
FROM cirrusci/flutter:2.10.5

# Set the working directory
WORKDIR /app

# Copy the Flutter application code
COPY . .

# Install dependencies
RUN flutter pub get

# Build the Flutter app
RUN flutter build apk

# Expose port 8080 (or your preferred port)
EXPOSE 8080

# Start the Flutter application
CMD ["flutter", "run", "--host-vmservice-port=8080", "--no-sound-null-safety"]



