require 'test_helper'

class NewswallControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newswall_index_url
    assert_response :success
  end

end
