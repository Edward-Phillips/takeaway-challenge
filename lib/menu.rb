class Menu
  attr_reader :specials
  def initialize(dishes: some_json_file)
    # this method will import the dishes as MenuItems from a
    # JSON file and store them as an attribute
  end
  def view_menu
    #this method will present the menu in a readable format.
  end
end
