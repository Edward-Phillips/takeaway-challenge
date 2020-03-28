require_relative 'menu_item'
require_relative 'menu'
require_relative 'order'
class Restaurant
  attr_reader :customer, :todays_menu

  def initialize(basket: Order, available: Menu)
    # this is where we will store the order class and the menu class
    @customer = basket.new
    @todays_menu = available.new
  end
end
