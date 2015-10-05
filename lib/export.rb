class Export
  def self.process(items, format: 'json')
    return StocksDecorator.new(items).to_json
  end
end
