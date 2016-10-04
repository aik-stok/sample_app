require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
def setup
@base_title = "Aik sample_app"
end
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Aik sample_app"
  end

  test "should get help" do
    get :help
    assert_response :success
        assert_select "title", "Help | Aik sample_app"

  end
  test "should get about" do
    get :about
    assert_response :success
        assert_select "title", "About | Aik sample_app"

  end
end
