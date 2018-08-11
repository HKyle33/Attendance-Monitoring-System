require 'test_helper'

class AllSubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_subjects_index_url
    assert_response :success
  end

end
