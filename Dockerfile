FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production && npm install pm2 -g 
COPY . .
EXPOSE 3000
CMD [ "pm2-runtime", "start", "server.js", "-i" , "max" ]

# Install PM2 globally to manage the application process
#ci for exact versions of dependencies, and -g to install PM2 globally
