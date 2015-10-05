#!/usr/bin/env ruby

require 'smarter_csv'
require 'active_support/core_ext/hash'

class NormaliseMoney 
  def self.convert(value)
    value.nil? || value.is_a?(::Fixnum) ? value : value.gsub(/[^-?\d\.]/,'').to_f
  end
end

def filter_modifiers(hash)
  return hash.except(:id,:description,:price,:cost,:price_type,:quantity_on_hand) 
end

def build_modifers(modifiers)
  modifiers = modifiers.each_slice(2).map {|element| {
    name: element[0][1], price: NormaliseMoney.convert(element[1][1])}}
  return modifiers
end

def delete_modifiers(hash)
  return hash.delete_if { |key, value| key.to_s.match(/modifier/) }
end

def normalise_chunk(chunk)
  chunk.each do |hash|
    modifiers = filter_modifiers(hash)
    hash = delete_modifiers(hash)
    hash[:modifiers] = build_modifers(modifiers) 
    print hash
  end
end  

options = {
  :chunk_size => 100, 
  :key_mapping => {
    :item_id => :id
  }, 
  :value_converters => {
    :price => NormaliseMoney, 
    :cost => NormaliseMoney
  }
}

n = SmarterCSV.process('input.csv', options) do |chunk|
  print normalise_chunk(chunk)
end

