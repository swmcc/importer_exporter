require 'virtus'

class Currency < Virtus::Attribute
  def coerce(value)
    value
  end
end

class Modifier 
  include Virtus.model

  attribute :name, String
  attribute :price, Currency
end

