# test/acceptance/home_test.rb
require "test_helper"

class HomeTest < Capybara::Rails::TestCase
  def test_home_page_content
    skip("ToDo")
    visit root_path
    assert page.has_content?("Listing Events")
    assert  page.wont_have_content "Signed in as"
  end
end