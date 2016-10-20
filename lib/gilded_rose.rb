class GildedRose
  attr_reader :item

  def initialize
  end

  def update_quality(item)
    @item = item
  end

  def quality_degrades(item)
    item.quality -= 1
  end

  def past_sell_by_date?
  end
end
