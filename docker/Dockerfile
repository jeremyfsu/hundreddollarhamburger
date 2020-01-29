FROM ruby:2.6.5-alpine
RUN apk add bash vim alpine-sdk tzdata sqlite \
sqlite-dev libxml2-dev libxslt-dev nodejs
RUN mkdir /app && mkdir /app/hdh
WORKDIR /app/hdh
EXPOSE 3000
RUN apk add py-pip git
RUN pip install awscli
RUN git clone https://github.com/jeremyfsu/hundreddollarhamburger.git
WORKDIR hundreddollarhamburger/rails/
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install --path vendor/bundle --binstubs
COPY start_app /
ENTRYPOINT /start_app
