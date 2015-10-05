require 'smarter_csv'
require 'active_support/core_ext/hash'
require 'models/stock'

class NormaliseMoney 
  def self.convert(value)
    value.nil? || value.is_a?(::Fixnum) ? value : value.gsub(/[^-?\d\.]/,'').to_f
  end
end

class Import

  def self.filter_modifiers(hash)
    return hash.except(:id,:description,:price,:cost,:price_type,:quantity_on_hand) 
  end

  def self.build_modifers(modifiers)
    modifiers = modifiers.each_slice(2).map {|element| {
      name: element[0][1], price: NormaliseMoney.convert(element[1][1])}}
    return modifiers
  end

  def self.delete_modifiers(hash)
    return hash.delete_if { |key, value| key.to_s.match(/modifier/) }
  end

  def self.normalise_chunk(chunk)
    items = []
    chunk.each do |hash|
      modifiers = filter_modifiers(hash)
      hash = delete_modifiers(hash)
      hash[:modifiers] = build_modifers(modifiers) 
      items.push(Stock.new hash)
    end
    return items
  end  

  def self.process(filename)
    options = {
      :chunk_size => 1000, 
      :key_mapping => {
        :item_id => :id
      }, 
      :value_converters => {
        :price => NormaliseMoney, 
        :cost => NormaliseMoney
      }
    }

    stock = []
    n = SmarterCSV.process(filename, options) do |chunk|
      stock += normalise_chunk(chunk)
    end
    return stock
  end

end
