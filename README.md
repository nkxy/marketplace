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

- Starting the server

Inside of the root directory, run `rails server`

- Interacting with the GraphQL API

Navigate to http://localhost:3000/graphiql, after starting the server.

### Query for all products

```
{
  allProducts {
    id
    inventory_count
    price
    title
	}
}
```

### Query for available products

```
{
  allProducts(onlyAvailableProducts: true) {
    id
    inventory_count
    price
    title
	}
}
```

### Purchase a product

Can only purchase products with an inventory_count > 0.

```
mutation {
  purchaseProduct(title: "INSERT_PRODUCT_NAME") {
    id
    title
    price
    inventory_count
  }
}
```

- Acknowledgements

Followed [this tutorial](https://www.howtographql.com/graphql-ruby/0-introduction/) to set up project.
