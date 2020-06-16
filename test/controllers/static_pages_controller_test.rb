require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Lodgers stay"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Lodgers stay"
  end

  test "should get policy" do
    get policy_path
    assert_response :success
    assert_select "title", "Policy | #{@base_title}"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
  
end