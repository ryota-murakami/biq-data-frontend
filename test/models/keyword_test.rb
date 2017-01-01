require 'test_helper'

class KeywordTest < ActiveSupport::TestCase
  def setup
    @keyword = Keyword.new(keyword: "foo")
  end

  test "should be valid" do
    assert @keyword.valid?
  end

  test "keyword should be present" do
    @keyword.keyword = nil
    assert_not @keyword.valid?
  end
end
