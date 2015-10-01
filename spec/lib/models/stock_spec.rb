require 'spec_helper'

RSpec.describe Stock do
  let(:stock) { Stock.new details }
  context "system price with no modifiers" do
    let(:details) do { 
        id: 111010,
        description: 'Coffee',
        price: 1.25,
        cost: 0.80,
        price_type: 'system',
        quantity_on_hand: 100000,
      }
    end
    
    it 'honours the id' do
      expect(stock.id).to eq details[:id]
    end

    it 'honours the description' do
      expect(stock.description).to eq details[:description] 
    end
    
    it 'honours the price' do
      expect(stock.price).to eq details[:price] 
    end
    
    it 'honours the cost' do
      expect(stock.cost).to eq details[:cost] 
    end

    it 'honours the price type' do
      expect(stock.price_type).to eq details[:price_type]
    end

    it 'honours the quantity on hand' do
      expect(stock.quantity_on_hand).to eq details[:quantity_on_hand]
    end

  end
end
