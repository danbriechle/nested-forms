require 'test_helper'

class DrumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drum = drums(:one)
  end

  test "should get index" do
    get drums_url
    assert_response :success
  end

  test "should get new" do
    get new_drum_url
    assert_response :success
  end

  test "should create drum" do
    assert_difference('Drum.count') do
      post drums_url, params: { drum: { size: @drum.size } }
    end

    assert_redirected_to drum_url(Drum.last)
  end

  test "should show drum" do
    get drum_url(@drum)
    assert_response :success
  end

  test "should get edit" do
    get edit_drum_url(@drum)
    assert_response :success
  end

  test "should update drum" do
    patch drum_url(@drum), params: { drum: { size: @drum.size } }
    assert_redirected_to drum_url(@drum)
  end

  test "should destroy drum" do
    assert_difference('Drum.count', -1) do
      delete drum_url(@drum)
    end

    assert_redirected_to drums_url
  end
end
