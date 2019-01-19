# README

## Process

This was my first time using GraphQL & Ruby on Rails - I wanted to try and learn something new, and push myself out of my comfort zone. I was curious as to how they differed compared to traditional REST APIs that I've worked with. I found that I could easily query for just the title, or the inventory_count without getting other information, for both mutations and regular queries. This would allow for more efficient queries; for example, if a shopping cart was implemented, to get the total price I could just query for the prices and sum those.

However, I felt like there was so much happening under the hood, that at times I felt like it was almost magic how everything was coming together. I struggled with figuring out how exactly the query types information was being added. I would be really interested in reading more about how exactly GraphQL works under the hood, as well as more about the Rails ecosystem.

SQLite was used as a database because it required minimal configuration. However, this may need to change if this was every scaled up to an actual marketplace, as it does not perform well when multiple requests are made at the same time, which would happen with multiple users on the marketplace.

## Configuration

Install [Ruby on Rails](https://gorails.com/setup/)

Inside the root directory, run

```
gem install bundler
gem install rails -v 5.1.4
bundle install
bundle update
rails db:create
```

## Database creation

Run `rake db:seed`

## Starting the server

Inside of the root directory, run `rails server`

## Interacting with the GraphQL API

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
