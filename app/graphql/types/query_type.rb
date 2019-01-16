Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allProducts, !types[Types::ProductType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Product.all }
  end

  field :allavailableProducts, !types[Types::ProductType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Product.where('inventory_count > 0') }
  end
end