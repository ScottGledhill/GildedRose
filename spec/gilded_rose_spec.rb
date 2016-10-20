require 'gilded_rose'
require 'item'

describe GildedRose do

subject(:rose) {described_class.new}
subject(:item) {Item.new('Aged Brie', 3, 4)}
subject(:item1) {Item.new('Sulfuras', 1, 4)}


  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq "fixme"
    end
  end

    it 'quality degrades by one each day' do
      rose.quality_degrades(item)
      expect(item.quality).to eq 3
    end

    it 'quality degrades twice as fast after sell by date' do
      rose.quality_degrades(item1)
      rose.quality_degrades(item1)
      rose.quality_degrades(item1)
      expect(item1.quality).to eq 0
    end
  end


# def update_quality
# @items.each do |item|
#   if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
#     if item.quality > 0
#       if item.name != "Sulfuras, Hand of Ragnaros"
#         item.quality = item.quality - 1
#       end
#     end
#   else
#     if item.quality < 50
#       item.quality = item.quality + 1
#       if item.name == "Backstage passes to a TAFKAL80ETC concert"
#         if item.sell_in < 11
#           if item.quality < 50
#             item.quality = item.quality + 1
#           end
#         end
#         if item.sell_in < 6
#           if item.quality < 50
#             item.quality = item.quality + 1
#           end
#         end
#       end
#     end
#   end
#   if item.name != "Sulfuras, Hand of Ragnaros"
#     item.sell_in = item.sell_in - 1
#   end
#   if item.sell_in < 0
#     if item.name != "Aged Brie"
#       if item.name != "Backstage passes to a TAFKAL80ETC concert"
#         if item.quality > 0
#           if item.name != "Sulfuras, Hand of Ragnaros"
#             item.quality = item.quality - 1
#           end
#         end
#       else
#         item.quality = item.quality - item.quality
#       end
#     else
#       if item.quality < 50
#         item.quality = item.quality + 1
#       end
#     end
#   end
# end
# end
