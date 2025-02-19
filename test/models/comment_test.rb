require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "Given missing name and status, then comment validation fails" do
    @comment = Comment.new
    refute @comment.valid?
    assert_includes @comment.errors.full_messages, "Message can't be blank"
    assert_includes @comment.errors.full_messages, "Project must exist"
  end

  test "Given correct parameters, then comment is valid" do
    @comment = comments(:one)
    assert @comment.valid?
  end
end
