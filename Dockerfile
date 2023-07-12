# From base image node
FROM node:16

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Copying all the files from your file system to container file system
COPY package.json ./

# Install all dependencies
RUN npm install

# Copy other files too
COPY ./ .

# Expose the port
EXPOSE 4032

# Command to run app when intantiate an image
CMD ["npm","start"]
