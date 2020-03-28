require 'menu'
require 'json'

describe Menu do
  let (:thing) { Menu.new}
  context ' checking toolbelt ' do
    it 'should be able to hold the dishes available' do
      expect(thing).to respond_to(:specials)
    end
  end
  context ' parsing JSON: ' do
    it "should be able to write the menu" do
      expect { thing.write_menu }.to change {thing.specials.length}.from(0).to(7)
    end
  end
  context 'viewing menu' do
    it "should be able to show you the menu in a readable way" do
      thing.write_menu
      expect(thing.view_menu).to eq "Carbonara: £7\nBolognese: £6\nCanneloni: £8\nCalamari: £9\nArancini: £6\nMargherita: £7\nHawaiian: £99"
    end
    it "should be able to store the menu" do
      expect(thing.specials).to eq([])
    end
  end
end
