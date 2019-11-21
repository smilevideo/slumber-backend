require 'test_helper'

class DreamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dream = dreams(:one)
  end

  test "should get index" do
    get dreams_url, as: :json
    assert_response :success
  end

  test "should create dream" do
    assert_difference('Dream.count') do
      post dreams_url, params: { dream: { description: @dream.description, rating: @dream.rating, sleep_id: @dream.sleep_id } }, as: :json
    end

    assert_response 201
  end

  test "should show dream" do
    get dream_url(@dream), as: :json
    assert_response :success
  end

  test "should update dream" do
    patch dream_url(@dream), params: { dream: { description: @dream.description, rating: @dream.rating, sleep_id: @dream.sleep_id } }, as: :json
    assert_response 200
  end

  test "should destroy dream" do
    assert_difference('Dream.count', -1) do
      delete dream_url(@dream), as: :json
    end

    assert_response 204
  end
end
