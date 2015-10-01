require 'virtus'
require 'models/modifier'

class Stock
  include Virtus.model

  attribute :id, Integer 
  attribute :description, String 
  attribute :price, Currency 
  attribute :cost, Currency 
  attribute :price_type, String
  attribute :quantity_on_hand, Integer
  attribute :modifiers, Array[Modifier]
end

