require 'test_helper'

class ListTest < ActiveSupport::TestCase
  def setup
    @user = users(:nadav)
    @list = @user.lists.build(name: "Sweet Tunes")
  end

  test "should be valid" do
    assert @list.valid?
  end

  test "user id should be present" do
    @list.user_id = nil
    assert_not @list.valid?
  end

  test "name should be present" do
    @list.name = "  "
    assert_not @list.valid?
  end

  test "name should not be longer than 50 characters" do
    @list.name = "a" * 51
    assert_not @list.valid?
  end
end
