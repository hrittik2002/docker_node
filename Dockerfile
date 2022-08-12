FROM node:16

# create a directry to hold the application code
WORKDIR /app

# copy the package.json on the app directry
COPY package*.json ./

# Install app dependencies on ./app
RUN npm install

# To bundle your app's source code inside the Docker image, use the COPY instruction
COPY . .

# Your app binds to port 8080 so you'll use the EXPOSE instruction to have it mapped by the docker daemon
EXPOSE 3000

# Last but not least, define the command to run your app using CMD which defines your runtime.
CMD [ "node" , "index.js"]