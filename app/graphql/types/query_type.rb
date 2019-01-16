Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allProducts, !types[Types::ProductType] do
    argument :onlyAvailableProducts, types.Boolean, default_value: false
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { 
      begin
        if args[:onlyAvailableProducts]
          Product.where('inventory_count > 0')
        else 
          Product.all
        end
       }
      rescue 
        raise GraphQL::ExecutionError.new("Unable to fetch products.")
      end
  end
end