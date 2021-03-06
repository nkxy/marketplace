Types::ProductType = GraphQL::ObjectType.define do
 name "Product"
  description "A product in an online marketplace"
  field :id, !types.ID
  field :title, !types.String
  field :price, !types.Float
  field :inventory_count, !types.Int
end