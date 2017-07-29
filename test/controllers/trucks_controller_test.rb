require 'test_helper'

class TrucksControllerTest < ActionDispatch::IntegrationTest

  test "should get root(index)" do
    get '/'
    assert_response :success
  end
end
