FROM node:18-slim

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Hugging Face Spaces use port 7860 by default
EXPOSE 7860

CMD ["node", "index.js"]
