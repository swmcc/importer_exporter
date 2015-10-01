require 'spec_helper'

RSpec.describe Modifier do
  let(:modifier) { Modifier.new details }
  context "simple modifier" do
    let(:details) do { name: 'Small', price: -0.25 } end
    
    it 'honours the id' do
      expect(modifier.name).to eq details[:name]
    end

    it 'honours the price' do
      expect(modifier.price).to eq details[:price]
    end

  end
end
