require 'test_helper'

class FooterControllerTest < ActionController::TestCase
  test "should get podminky" do
    get :podminky
    assert_response :success
  end

  test "should get certifikaty" do
    get :certifikaty
    assert_response :success
  end

  test "should get partneri" do
    get :partneri
    assert_response :success
  end

end
