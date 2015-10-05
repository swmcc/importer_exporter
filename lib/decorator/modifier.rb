require 'representable/json'

class ModifierDecorator < Representable::Decorator
  include Representable::JSON

  property :name
  property :price
end
