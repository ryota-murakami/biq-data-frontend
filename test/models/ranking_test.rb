require 'test_helper'

class RankingTest < ActiveSupport::TestCase
  def setup
    @ranking = Ranking.new()
  end

  test "should be valid" do
    assert @ranking.valid?
  end
end
