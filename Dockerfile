# Use the official Node.js 14.21.3 image as the base image
FROM node:14.21.3

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Vue.js application
RUN yarn build

# Install nginx
RUN apt-get update && apt-get install -y nginx

# Remove the default nginx configuration file
RUN rm /etc/nginx/sites-enabled/default

# Create a basic nginx configuration file
RUN echo 'server {\n\
  listen 80;\n\
  server_name localhost;\n\
  root /usr/share/nginx/html;\n\
  index index.html;\n\
  location / {\n\
  try_files $uri $uri/ /index.html;\n\
  }\n\
  }' > /etc/nginx/conf.d/default.conf

# Copy the built application to the nginx html directory
RUN cp -r /app/dist/* /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]