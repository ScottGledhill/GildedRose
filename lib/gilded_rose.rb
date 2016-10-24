class GildedRose
  attr_reader :item

  def update_quality(item)
    @item = item
  end

  def quality_degrades(item)
    if item.quality > 0
      past_sell_by_date?(item) ? item.quality -= 2 : item.quality -= 1
      item.sell_in -= 1
    end
  end

  def past_sell_by_date?(item)
    item.sell_in <= 0 ? true : false
  end

  def quality_equal_or_greater_than_zero?(item)
    item.quality > 0 ? true : false
  end
end
