require 'representable/json'

class ModifierDecorator < Representable::Decorator
  include Representable::JSON

  property :name
  property :price
end

class StockDecorator < Representable::Decorator
  include Representable::JSON

  property :id

  collection :modifiers, extend: ModifierDecorator
end

