
### STAGE 1: Build ###
FROM node:14.9.0-buster

### Install dependencies ###
RUN npm install react-table --save
RUN npm install react-confirm-alert --save
RUN npm install react-skylight --save
RUN npm install react-csv --save
RUN npm install @material-ui/core --save
RUN npm install elastic-apm-js-base --save

###Start the application:
#npm start

###To run the production build, follow these steps:
#npm run build
RUN npm install -g serve
#serve -s build
