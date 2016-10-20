class GildedRose
  attr_reader :item

  def initialize
  end

  def update_quality(item)
    @item = item
  end

  def quality_degrades(item)
    past_sell_by_date?(item) ? item.quality -=2 : item.quality -= 1
    item.sell_in -= 1
  end

  def past_sell_by_date?(item)
    item.sell_in <= 0 ? true : false
  end

end
