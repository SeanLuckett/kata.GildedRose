require 'gilded_rose'

RSpec.describe GildedRose do

  describe '#update_quality' do
    it 'does not change the name' do
      item = Item.new(name: 'foo', sell_in: 0, quality: 0)
      items = [item]
      
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq item.name
    end
  end

end
