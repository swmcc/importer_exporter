require 'representable/json'

class StockDecorator < Representable::Decorator
  include Representable::JSON

  property :id
end
