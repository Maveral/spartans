require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get newsindex" do
    get :newsindex
    assert_response :success
  end

  test "should get newsnew" do
    get :newsnew
    assert_response :success
  end

  test "should get newsedit" do
    get :newsedit
    assert_response :success
  end

  test "should get newsupdate" do
    get :newsupdate
    assert_response :success
  end

  test "should get newsdelete" do
    get :newsdelete
    assert_response :success
  end

  test "should get gbindex" do
    get :gbindex
    assert_response :success
  end

  test "should get gbnew" do
    get :gbnew
    assert_response :success
  end

  test "should get gbedit" do
    get :gbedit
    assert_response :success
  end

  test "should get gbupdate" do
    get :gbupdate
    assert_response :success
  end

  test "should get gbdelete" do
    get :gbdelete
    assert_response :success
  end

end
