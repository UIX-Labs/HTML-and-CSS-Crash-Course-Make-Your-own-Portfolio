# Use a specific version of Node
FROM node:14

# Create app directory
WORKDIR /app

# Install Yarn and app dependencies
COPY package*.json ./
RUN yarn 

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Define the command to run your app, making sure Vite listens on all network interfaces
CMD ["yarn", "dev", "--host"]
