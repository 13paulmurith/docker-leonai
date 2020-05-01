FROM node:lts-alpine
LABEL maintainer="contact@panz.fr"
RUN apk update && \
    apk add git && \
    apk add python3
RUN pip3 install pipenv
RUN mkdir /leon
WORKDIR /leon
RUN git clone -b master https://github.com/leon-ai/leon.git .
RUN npm install
RUN npm run build
CMD ["npm", "start"]
