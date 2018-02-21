require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reviews_index_url
    assert_response :success
  end

  test "should get new" do
    get reviews_new_url
    assert_response :success
  end

  test "should get udapte" do
    get reviews_udapte_url
    assert_response :success
  end

  test "should get destroy" do
    get reviews_destroy_url
    assert_response :success
  end

end
