FROM nginx:stable-alpine
WORKDIR /xenia-frontend
RUN apk update &&\ 
    apk upgrade &&\
    wget "https://ci.netbeacon.de/repository/download/Xenia_Frontend.lastSuccessful/dist.zip?guest=1" -O "dist.zip.jar" &&\
    unzip dist.zip &&\
    rm dist.zip
COPY nginx.conf /etc/nginx/nginx.conf
