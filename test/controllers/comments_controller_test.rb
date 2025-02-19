require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "should get new" do
    get new_comment_url
    assert_response :success
  end

  test "should create comment" do
    project = projects(:project_one)
    assert_difference("Comment.count") do
      post comments_url, params: { comment: { message: "test", project_id: project.id } }
    end

    assert_redirected_to project_url(project)
  end

  test "should get edit" do
    get edit_comment_url(@comment)
    assert_response :success
  end

  test "should update comment" do
    patch comment_url(@comment), params: { comment: { message: "new message"} }
    assert_redirected_to project_url(@comment.project)
  end

  test "should destroy comment" do
    assert_difference("Comment.count", -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to comments_url
  end
end
