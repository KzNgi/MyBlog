require 'test_helper'

class MessavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messafe = messaves(:one)
  end

  test "should get index" do
    get messaves_url
    assert_response :success
  end

  test "should get new" do
    get new_messafe_url
    assert_response :success
  end

  test "should create messafe" do
    assert_difference('Messafe.count') do
      post messaves_url, params: { messafe: { message: @messafe.message, title: @messafe.title } }
    end

    assert_redirected_to messafe_url(Messafe.last)
  end

  test "should show messafe" do
    get messafe_url(@messafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_messafe_url(@messafe)
    assert_response :success
  end

  test "should update messafe" do
    patch messafe_url(@messafe), params: { messafe: { message: @messafe.message, title: @messafe.title } }
    assert_redirected_to messafe_url(@messafe)
  end

  test "should destroy messafe" do
    assert_difference('Messafe.count', -1) do
      delete messafe_url(@messafe)
    end

    assert_redirected_to messaves_url
  end
end
