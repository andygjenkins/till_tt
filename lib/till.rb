require_relative 'parser'

# Classes to be contained in one file to help with initial reasoning

class Till

  def initialize(json = 'hispter.json')
    @menu = Menu.new(json)
    @order = Order.new
  end


end


class Menu
  def initialize(json)
    @cafe_data = Parser.new(json)
  end

  def menu_items
    @cafe_data.data_hash['prices']
  end
end


class Order

  attr_reader :list , :customers

  def initialize
    @list = []
    @customers = []
  end

end

class Recipt

end
