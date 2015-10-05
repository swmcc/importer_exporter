require 'spec_helper'

RSpec.describe Stock do
  let(:stock) { Stock.new details }
  context "system price with no modifiers" do
    let(:details) do { 
        id: 111784,
        description: 'Delivery',
        price: nil,
        cost: nil,
        price_type: 'open',
        quantity_on_hand: nil
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

    it 'no modifiers listed' do
      expect(stock.modifiers).to eq []
      expect(stock.modifiers.count).to eq 0 
    end
  end
  
  context "system price with three modifiers" do
    let(:details) do  {
        id: 111010,
        description: 'Coffee',
        price: 1.25,
        cost: 0.80,
        price_type: 'system',
        quantity_on_hand: 100000,
        modifiers: [
          {
            name: 'Small',
            price: -0.25
          },{
            name: 'Medium',
            price: 0.00
          },{
            name: 'Large',
            price: 0.30
          }
        ]
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

    it 'three modifiers listed' do
      expect(stock.modifiers.count).to eq 3 
    end
   
    it 'first modifier details are all honoured' do
      expect(stock.modifiers[0].name).to eq 'Small'
      expect(stock.modifiers[0].price).to eq -0.25
    end
    
    it 'second modifier details are all honoured' do
      expect(stock.modifiers[1].name).to eq 'Medium'
      expect(stock.modifiers[1].price).to eq 0.00
    end
    
    it 'third modifier details are all honoured' do
      expect(stock.modifiers[2].name).to eq 'Large'
      expect(stock.modifiers[2].price).to eq 0.30
    end

    it 'outputs json' do
      print StockDecorator.new(stock).to_json
    end

  end
end
