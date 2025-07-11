# Use the official Node.js image
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project into the container
COPY . .


# Expose the default port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
