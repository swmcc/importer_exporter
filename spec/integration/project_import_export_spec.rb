require 'spec_helper'

RSpec.describe 'integration test for the project' do
  context 'test that the input.csv file imports correctly' do

    let(:file) { File.expand_path(File.join(File.dirname(__FILE__), '..', 'data', 'multiple_input.csv')) }
    let(:items) { Import.process file }
    let(:json) { Export.process items}
    let(:body) { JSON.parse(json) }

    it 'imports all the data correctly' do
      expect(items.count).to eq 14 
    end

    it 'exports all the data correctly' do
      expect(body.first['description']).to eq 'Coffee'
      expect(body.last['description']).to eq 'Rolls 57'
      expect(body.last['price']).to eq 81.43
      expect(body.last['cost']).to eq nil
      expect(body.last['price_type']).to eq 'system'
      expect(body.last['quantity_on_hand']).to eq 0
      expect(body.last['modifiers'].count).to eq 2
      expect(body.last['modifiers'][0]['name']).to eq 'Jelly'
      expect(body.last['modifiers'][0]['price']).to eq 0.75 
      expect(body.last['modifiers'][1]['name']).to eq 'Peanut Butter'
      expect(body.last['modifiers'][1]['price']).to eq 1.12 
    end

  end
end
