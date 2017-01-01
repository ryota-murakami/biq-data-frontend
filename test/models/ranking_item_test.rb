require 'test_helper'

class RankingItemTest < ActiveSupport::TestCase
  def setup
    @ranking = Ranking.new(id: 1)
    @keyword = Keyword.new(id: 1)
    @ranking_item = RankingItem.new(ranking: @ranking, keyword: @keyword, count: 1)
  end

  test "should be valid" do
    assert @ranking_item.valid?
  end

  test "count should be present" do
    @ranking_item.count = nil
    assert_not @ranking_item.valid?
  end
end
