require 'test_helper'

class EventsControllerTest < Capybara::Rails::TestCase
  test "sanity" do
    visit root_path
    assert page.has_content?("Listing Events")
    refute page.has_content?("xxxxx")
  end
end
