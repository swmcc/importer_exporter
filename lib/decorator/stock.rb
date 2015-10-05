require 'representable/json'

class ModifierDecorator < Representable::Decorator
  include Representable::JSON

  property :name
  property :price
end

class StockDecorator < Representable::Decorator
  include Representable::JSON

  property :id
  property :description
  property :price
  property :cost
  property :price_type
  property :quantity_on_hand

  collection :modifiers, extend: ModifierDecorator
end

