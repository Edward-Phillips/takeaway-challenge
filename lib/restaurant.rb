require_relative 'menu_item'
require_relative 'menu'
require_relative 'order'
class Restaurant
  attr_reader :basket, :menu

  def initialize(basket: Order, menu: Menu)
    # this is where we will store the order class and the menu class
  end
end
