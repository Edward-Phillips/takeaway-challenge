
require 'menu_item'

describe MenuItem do
  let(:menu_item) {MenuItem.new}
  context ' seeing available dishes: ' do
    it " should be able to tell you the name of the dish" do
      expect(menu_item).to respond_to(:name)
    end
    it ' should be able to tell you the price of the dish' do
      expect(menu_item).to respond_to(:price)
    end
  end
end
