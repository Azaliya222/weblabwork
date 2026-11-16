require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  def test_layout_links
    get root_path
    assert_response :success
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end

  def test_signup_page
    get signup_path
    assert_response :success
    # Используем хелпер для проверки заголовка
    assert_select "title", full_title("Sign up")
  end
end