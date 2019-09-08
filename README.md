# Bowtie To-Do API

This is a To-Do Ruby on Rails API which serves and manages JSON data for a React frontend. This was created for a code challenge.

As of now the available features are:

- **Login and Signup with JWT Tokens**
- **API serves JSON response data with corresponding messages and status codes**
- **API utilizes RESTful endpoints**
- **Logged in users can maintain a list of Projects and add to-dos for them**
- **API can be run in a Docker container**

Features soon to be added:

- **Users will be able to signup/signin with a Google account**

## Docker Installation:

To use [Docker](https://docs.docker.com/docker-for-mac/install/) you'll need to make sure it's been downloaded to your operating system. I've provided a link for you to get started with that process!

Once you have Docker all setup, follow the below instructions

- Fork and clone this repo

#### Get Docker up and running

- cd into bowtie-todo-api directory which holds the docker-compose.yml
- In your terminal run this command: `docker-compose build`
  - This command will build the Docker Image which is then used to build the container
- If all goes well, run this next command in the terminal: `docker-compose up`
  - This will boot up the application in a Docker container
  - Navigate to http://localhost:3000/ and you should see the Rails server up and running

#### Create/Migrate DB in Docker Container

- Once the container is up and running, you might run into issues with the DB not being created.
- To handle this run the following command in your terminal:
````
  docker-compose run web rake db:create
````
- Lastly, you'll need to migrate the database which creates the schema.rb
````
  docker-compose run web rake db:migrate
````
- You should be good to go now!

## Installation without Docker:

You'll need to have Ruby, Rails, Postgres, and Node.js installed for running this application

- Fork and clone the repository

#### Switch Over Database

- To run the application without Docker you'll need to re-configure the database
- cd into bowtie-todo-api directory and open your text editor of choice
- Head to config/database.yml file and comment out the following configuration
````
# default: &default
#   adapter: postgresql
#   encoding: unicode
#   host: db
#   username: postgres
#   password:
#   pool: 5
#
# development:
#   <<: *default
#   database: bowtie_todo_api_development
#
#
# test:
#   <<: *default
#   database: bowtie_todo_api_test
````
- After commenting out the following lines of code, you'll need to un-comment the required database configuration
````
development:
  adapter: postgresql
  encoding: unicode
  database: bowtie_todo_api_development
  pool: 5
  username: brendenthornton
  password:
  timeout: 5000

  test:
    adapter: postgresql
    encoding: unicode
    database: bowtie_todo_api_test
    pool: 5
    username: brendenthornton
    password:
    timeout: 5000
````

#### Install Dependencies and Run the Server

- Now the DB should be properly configured and you can run the following commands in your terminal:
  - Run `$ bundle install`
  - Run `$ rake db:create`
  - Run `$ rake db:migrate`
  - Run `$ rails server`
- Make sure to run this before starting up [bowtie-todo-client](https://github.com/bthornton505/bowtie-todo-client). You need both for the app to work properly.

## Frameworks and Libraries Used

- Back-end: [Ruby on Rails](https://github.com/rails/rails)
- [Docker](https://www.docker.com/)
- Database: [postgreSQL](https://www.postgresql.org/)
- JSON Web Tokens: [jwt](https://github.com/jwt/ruby-jwt)
- ActiveModel Serializers: [active_model_serializers](https://github.com/rails-api/active_model_serializers)

## Author

- [Brenden Thornton](https://github.com/bthornton505)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bthornton505/bowtie-todo-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

All software is available as open source under the terms of the [MIT License](https://github.com/bthornton505/bowtie-todo-api/blob/master/LICENSE).
