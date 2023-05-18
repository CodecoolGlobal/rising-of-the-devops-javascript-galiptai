FROM node
RUN apt-get update \
    && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
RUN npm install \
    && npm install -g npm-check-updates \
    && ncu -u \
    && npm install
RUN npm ci --only=production
EXPOSE 5000
CMD ["node", "index.js"]