require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get masaze" do
    get :masaze
    assert_response :success
  end

  test "should get pohyb" do
    get :pohyb
    assert_response :success
  end

  test "should get vyziva" do
    get :vyziva
    assert_response :success
  end

  test "should get cenik" do
    get :cenik
    assert_response :success
  end

  test "should get kontakty" do
    get :kontakty
    assert_response :success
  end

end
