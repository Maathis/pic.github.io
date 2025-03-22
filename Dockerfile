FROM ruby:latest
WORKDIR /doc

RUN gem update --system
RUN apt update -y && apt install -y build-essential make

COPY . .

RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]