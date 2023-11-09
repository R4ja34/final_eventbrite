require "test_helper"

class CheckoutControllerTest < ActionDispatch::IntegrationTest
  test "should get susses" do
    get checkout_susses_url
    assert_response :success
  end

  test "should get cancel" do
    get checkout_cancel_url
    assert_response :success
  end
end
