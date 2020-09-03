
### STAGE 1: Build ###
FROM node:14.9.0-buster

### Install dependencies ###
RUN npm install react-table --save
RUN npm install react-confirm-alert --save
RUN npm install react-skylight --save
RUN npm install react-csv --save
RUN npm install @material-ui/core --save
#RUN npm install elastic-apm-js-base --save
RUN npm install @elastic/apm-rum --save

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package.json /usr/src/app/package.json
COPY . /usr/src/app
RUN npm install --silent
RUN npm install react-scripts -g --silent

###Start the application:
#npm start

###To run the production build, follow these steps:
#npm run build
#RUN npm install -g serve
#serve -s build
RUN npm run build



### STAGE 2: Production Environment ###
FROM nginx:1.19.2-alpine
COPY --from=builder /usr/src/app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
