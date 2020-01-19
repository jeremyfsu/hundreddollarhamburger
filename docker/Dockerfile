FROM ruby:2.6.5-alpine
RUN apk add bash vim alpine-sdk tzdata sqlite \
sqlite-dev libxml2-dev libxslt-dev nodejs
RUN mkdir /app && mkdir /app/hdh
WORKDIR /app/hdh
EXPOSE 3000
COPY start_app /
ENTRYPOINT /start_app
