require 'test_helper'

class CommentControllerTest < ActionController::TestCase
  test "should get show_comment" do
    get :show_comment
    assert_response :success
  end

end
