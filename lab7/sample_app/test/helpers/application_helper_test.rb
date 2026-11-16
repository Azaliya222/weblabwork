require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  def test_full_title_helper
    assert_equal full_title,         "Ruby on Rails Tutorial Sample App"
    assert_equal full_title("Help"), "Help | Ruby on Rails Tutorial Sample App"
  end
end