require 'test_helper'

class ChurchControllerTest < ActionController::TestCase
  test "should get history" do
    get :history
    assert_response :success
  end

end
