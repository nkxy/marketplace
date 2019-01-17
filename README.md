# README

- Versions

Rails 5.2.2

Ruby 2.5.1

- Configuration

Install [Ruby on Rails](https://gorails.com/setup/)

Inside the root directory, run

```
gem install bundler
gem install rails -v 5.1.4
bundle install
bundle update
rails db:create
```

- Database creation

Run `rake db:seed`

- Running the database

1. Inside of the root directory, run `rails server`
2. Navigate to http://localhost:3000/graphiql.

- Interacting with the GraphQL API

### Query for all products

### Query for available products

### Purchase a product

- Acknowledgements

Followed [this tutorial](https://www.howtographql.com/graphql-ruby/0-introduction/) to set up project.
