require 'test_helper'

class SleepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sleep = sleeps(:one)
  end

  test "should get index" do
    get sleeps_url, as: :json
    assert_response :success
  end

  test "should create sleep" do
    assert_difference('Sleep.count') do
      post sleeps_url, params: { sleep: { end_day: @sleep.end_day, end_time: @sleep.end_time, note: @sleep.note, rating: @sleep.rating, start_day: @sleep.start_day, start_time: @sleep.start_time, user_id: @sleep.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show sleep" do
    get sleep_url(@sleep), as: :json
    assert_response :success
  end

  test "should update sleep" do
    patch sleep_url(@sleep), params: { sleep: { end_day: @sleep.end_day, end_time: @sleep.end_time, note: @sleep.note, rating: @sleep.rating, start_day: @sleep.start_day, start_time: @sleep.start_time, user_id: @sleep.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy sleep" do
    assert_difference('Sleep.count', -1) do
      delete sleep_url(@sleep), as: :json
    end

    assert_response 204
  end
end
