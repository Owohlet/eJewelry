require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get corner" do
    get :corner
    assert_response :success
  end

end
