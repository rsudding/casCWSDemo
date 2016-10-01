require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get infogem" do
    get :infogem
    assert_response :success
  end

  test "should get infoauthor" do
    get :infoauthor
    assert_response :success
  end

  test "should get infolatestgems" do
    get :infolatestgems
    assert_response :success
  end

end
