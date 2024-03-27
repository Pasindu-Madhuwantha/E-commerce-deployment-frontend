FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV NODE_ENV=production
RUN npm run build
EXPOSE 3006
CMD ["npm", "start"]

