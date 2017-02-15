require 'test_helper'

class BloglistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bloglist_index_url
    assert_response :success
  end

end
