require 'spec_helper'

RSpec.describe 'Decorator tests' do

  context "system price with no modifiers" do
    let(:stock) { Stock.new details }
    let(:serial) { StockDecorator.new(stock).to_json }
    let(:body) { JSON.parse(serial) }
    let(:details) do { 
        id: 111784,
        description: 'Delivery',
        price: nil,
        cost: nil,
        price_type: 'open',
        quantity_on_hand: nil
      }
    end

    it 'honours the object information' do
      expect(body['id']).to eq 111784 
      expect(body['description']).to eq 'Delivery'
    end

    it 'returns [] for no modifiers' do
      expect(body['modifiers']).to eq []
    end
  end

  context "system price with three modifiers" do
    let(:stock) { Stock.new details }
    let(:serial) { StockDecorator.new(stock).to_json }
    let(:body) { JSON.parse(serial) }
    let(:details) do { 
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

    it 'honours the object information' do
      expect(body['id']).to eq 111010 
      expect(body['description']).to eq 'Coffee'
    end

    it 'returns 3 for the modifiers' do
      expect(body['modifiers'].count).to eq 3
    end

  end
end
