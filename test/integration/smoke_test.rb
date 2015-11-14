require 'test_helper'
include Devise::TestHelpers
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation


class SmokeTest < Capybara::Rails::TestCase
  # self.use_transactional_fixtures = false

  setup do
    Capybara.current_driver = :selenium
    DatabaseCleaner.start
  end

  teardown do
    DatabaseCleaner.clean
  end

  test 'view event details, login and add event' do
    visit root_path
    # find_button(' Add', exact: false)
    # page.must_have_text('Find This String in Listing Events table')
    click_on('Add', exact: false)
    # Capybara::Screenshot.screenshot_and_open_image
    page.must_have_text('You need to sign in or sign up before continuing.')

    #   @user = FactoryGirl.create(:user)
    #   visit new_user_session_path
    #   fill_in('Email', with: @user.email)
    #   fill_in('Password', with: @user.password)
    #   click_button('Log in')
  end

end