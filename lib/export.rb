class Export
  def self.process(items)
    return StocksDecorator.new(items).to_json
  end
end
