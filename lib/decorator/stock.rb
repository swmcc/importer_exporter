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

  collection :modifiers, extend: ModifierDecorator
end

