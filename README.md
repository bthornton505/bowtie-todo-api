# Bowtie To-Do API

This is a To-Do Ruby on Rails API which serves and manages JSON data for a React frontend. This was created for a code challenge.

As of now the available features are:

- **Login and Signup with JWT Tokens**
- **API serves JSON response data with corresponding messages and status codes**
- **API utilizes RESTful endpoints**
- **Logged in users can maintain a list of Projects and add to-dos for them**

Features soon to be added:

- **Users will be able to signup/signin with a Google account**

## Installation:

Assuming you have Ruby, Rails and Node.js installed,

- Fork and clone this repo
- cd into bowtie-todo-api directory
  - Run `$ bundle install`
  - Run `$ rake db:migrate`
  - Run `$ rails server`
- Make sure to run this before starting up [bowtie-todo-client](https://github.com/bthornton505/bowtie-todo-client). You need both for the app to work properly.

## Frameworks and Libraries Used

- Back-end: [Ruby on Rails](https://github.com/rails/rails)
- Database: [sqlite3](https://www.sqlite.org/index.html)
- JSON Web Tokens: [jwt](https://github.com/jwt/ruby-jwt)
- ActiveModel Serializers: [active_model_serializers](https://github.com/rails-api/active_model_serializers)

## Author

- [Brenden Thornton](https://github.com/bthornton505)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bthornton505/bowtie-todo-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

All software is available as open source under the terms of the [MIT License](https://github.com/bthornton505/bowtie-todo-api/blob/master/LICENSE).
