require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "Given correct parameters, then user is valid" do
    @comment = comments(:one)
    assert @comment.valid?
  end
end
