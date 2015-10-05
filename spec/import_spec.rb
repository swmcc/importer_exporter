require 'spec_helper'

RSpec.describe Import do
  context 'test that a csv file can be imported with only one element' do

    filename = File.expand_path(File.join(File.dirname(__FILE__), 'data', 'input.csv'))

    it 'imports all the data correctly' do
      stock = Import::process filename
      expect(stock.count).to eq 1
    end
  end
  
  context 'test that a csv file can be imported with several elements' do

    filename = File.expand_path(File.join(File.dirname(__FILE__), 'data', 'multiple_input.csv'))

    it 'imports all the data correctly' do
      stock = Import::process filename
      expect(stock.count).to eq 14 
    end
  end
end
