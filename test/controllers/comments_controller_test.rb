require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  fixtures :comments

  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: comments(:one).comment }
      assert_redirected_to project_index_path
    end
  end
end
