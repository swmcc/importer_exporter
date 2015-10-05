require 'spec_helper'

RSpec.describe Export do
  context 'test that a model can be exported' do

    let(:items) { [coffee_obj, delivery_obj] }
    let(:coffee_obj) { Stock.new coffee } 
    let(:delivery_obj) { Stock.new delivery }
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
  
    it 'exports all the data correctly' do
      json = Export.process(items) 
      body = JSON.parse(json)

      expect(body.count).to eq 2
      expect(body.first['description']).to eq 'Coffee'
    end
  end
end
