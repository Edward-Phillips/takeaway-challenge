require_relative 'menu_item'
require 'json'

class Menu
  attr_accessor :specials # set to accessor for testing - CHANGE BACK to READER
  def initialize
    # this method will import the dishes as MenuItems from a
    # JSON file and store them as an attribute
    # after writing the tests for the MenuItem class I've
    # decided that it would be better to initialize with
    # an empty specials attribute and use a method to parse
    # the JSON file and use it to create a new MenuItem for each dish
    @specials = []
  end
  def view_menu
    #this method will present the menu in a readable format.
     #@specials.each {|key, value| puts "#{key}: £#{value}" }
     #convoluted method in this line, not too big a fan.
     selection = []
      @specials.each do |plate|
       selection.push("#{plate.name}: £#{plate.price}")
     end
     selection.join("\n")
  end
  def write_menu
    # this method will take a file in JSON format and turn it
    # into MenuItem instances, then store them in the @specials attribute
    file = File.read("./lib/italian_dishes.json")
    temp_hash = JSON.parse(file)
    temp_hash.each do |key, value|
      @specials.push(MenuItem.new(dish: key, cost: value))
    end
  end
end
