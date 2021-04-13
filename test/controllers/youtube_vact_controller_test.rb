require 'test_helper'

class YoutubeVactControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get youtube_vact_index_url
    assert_response :success
  end

end
