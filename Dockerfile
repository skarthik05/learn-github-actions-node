# Use Node LTS
FROM node:18

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# App port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
