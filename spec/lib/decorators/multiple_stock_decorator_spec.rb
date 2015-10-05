require 'spec_helper'

RSpec.describe 'Decorator tests for mulitple stock items' do

  context 'multiple objects are treated correctly' do
    let(:items) { [coffee_obj, delivery_obj] }
    let(:coffee_obj) { Stock.new coffee } 
    let(:delivery_obj) { Stock.new delivery }
    let(:body) { JSON.parse(StocksDecorator.new(items).to_json) }
    let(:delivery) do { 
        id: 111784,
        description: 'Delivery',
        price: nil,
        cost: nil,
        price_type: 'open',
        quantity_on_hand: nil
      }
    end
    let(:coffee) do  {
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

    it 'the correct number of stock items are returned' do
      expect(body.count).to eq 2 
    end

    it 'the details are correct' do
      expect(body.first['id']).to eq 111010
      expect(body[1]['id']).to eq 111784 
    end
  end

end
