FROM node


WORKDIR /app
COPY ["client/package.json", "client/package-lock.json", "./client/"]
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]