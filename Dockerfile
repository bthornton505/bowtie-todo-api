FROM ruby:2.6.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /bowtie-todo-api

WORKDIR /bowtie-todo-api

COPY Gemfile /bowtie-todo-api/Gemfile
COPY Gemfile.lock /bowtie-todo-api/Gemfile.lock
RUN bundle install

COPY . /bowtie-todo-api

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
