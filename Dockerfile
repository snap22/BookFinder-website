# Use Debian-based Node.js image
FROM node:18

# Install Hugo globally and other dependencies
RUN apt-get update && apt-get install -y hugo git && apt-get clean

# Set working directory
WORKDIR /app

# Copy only package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install Node.js dependencies without executing the postinstall scripts
RUN npm install --ignore-scripts

# Copy the rest of the application files
COPY . .

# Use globally installed Hugo binary to build the site
RUN hugo --theme=dot-org-hugo-theme

# Expose the Hugo server port
EXPOSE 1313

# Override the start command to use the global Hugo binary
CMD ["hugo", "serve", "--bind=0.0.0.0", "--port=1313", "--buildFuture", "--buildDrafts", "--gc", "--disableFastRender"]
