require 'test_helper'

class AsdfControllerTest < ActionController::TestCase
  test "should get sadf" do
    get :sadf
    assert_response :success
  end

end
