# base image
FROM node:22

# set working directory to /testapp
WORKDIR /testapp

# copying all the files in the working directory (first dot => source, second dot => destination)
COPY . .

# To run project: to get node_modules
RUN npm install

# Defining PORT (optional)
EXPOSE 3000 

# Now finally run the project
CMD [ "npm", "start" ]