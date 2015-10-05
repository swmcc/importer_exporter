require 'representable/json/collection'

class StocksDecorator < Representable::Decorator
  include Representable::JSON::Collection

  items extend: StockDecorator, class: Stock
end
