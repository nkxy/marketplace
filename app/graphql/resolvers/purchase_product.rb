class Resolvers::PurchaseProduct < GraphQL::Function
  # arguments passed as "args"
  argument :title, !types.String

  # return type from the mutation
  type Types::ProductType

  def call(_obj, args, _ctx)
    if item = Product.find_by_title(args[:title])
      if item.inventory_count > 0 
        item.update inventory_count: item.inventory_count - 1
      else 
        raise GraphQL::ExecutionError.new("#{args[:title]} is out of stock.")
      end
      Product.find_by_title(args[:title])
    else 
      raise GraphQL::ExecutionError.new("#{args[:title]} does not exist.")
    end
  end
end