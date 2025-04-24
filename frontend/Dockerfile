FROM node:18
WORKDIR /app
COPY . .
RUN npm install && npx vite build
EXPOSE 3000
CMD ["npm", "run", "dev"]