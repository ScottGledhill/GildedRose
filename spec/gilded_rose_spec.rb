require 'gilded_rose'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq "fixme"
    end
  end

    it 'can show the sell by date' do

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
