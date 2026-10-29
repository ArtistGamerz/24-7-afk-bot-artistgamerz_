FROM node:20-alpine

# Install build dependencies if needed for native modules
RUN apk add --no-cache python3 make g++

WORKDIR /app

# Copy package descriptors first for Docker layer caching
COPY package*.json ./

RUN npm install --production

# Copy bot source code
COPY . .

# Expose web dashboard / healthcheck port
EXPOSE 3000

ENV NODE_ENV=production
ENV PORT=3000

CMD ["node", "index.js"]
