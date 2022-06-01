FROM node


WORKDIR /app
COPY ["server/package.json", "server/package-lock.json", "./server/"]
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]