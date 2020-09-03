
### STAGE 1: Build ###
FROM node:14.9.0-buster

### Install dependencies ###
npm install react-table --save
npm install react-confirm-alert --save
npm install react-skylight --save
npm install react-csv --save
npm install @material-ui/core --save
npm install elastic-apm-js-base --save

###Start the application:
#npm start

###To run the production build, follow these steps:
#npm run build
npm install -g serve
#serve -s build
