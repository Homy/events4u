# test/acceptance/home_test.rb
require "test_helper"

class HomeTest < Capybara::Rails::TestCase
  def test_home_page_content
    visit root_path
    assert page.has_content?("Listing Events")
    # page.must_have_content "Listing events"

    within ".navbar" do
      refute_content "Signed in"
      page.wont_have_content "Signed in as"
    end

    def test_login
      visit users_path
      assert page.has_content?("Listing Events")
      # page.must_have_content "Listing events"

      within ".navbar" do
        refute_content "Signed in"
        page.wont_have_content "Signed in as"
      end
      # assert_link "Sign in"
      # assert_link find(".navbar"), "Login"
      # find(".login").must_have_link("Sign in")

      # assert_selector 'li:first', text: "Item 1"
      # page.must_have_selector 'li:first', text: "Item 1"
    end
  end
end