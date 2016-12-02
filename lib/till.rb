require_relative 'parser'

# Classes to be contained in one file to help with initial reasoning

class Till



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

end

class Recipt

end
