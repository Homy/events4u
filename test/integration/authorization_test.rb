require 'test_helper'
include Devise::TestHelpers
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

class AuthorizationTest < Capybara::Rails::TestCase
  self.use_transactional_fixtures = false

  setup do
    Capybara.current_driver = :selenium_chrome
    DatabaseCleaner.start
  end

  teardown do
    DatabaseCleaner.clean
  end

  test 'successful signup' do
    @user = User.new(email: 'proper@email.co', password: 'proper_password')
    visit new_user_registration_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    fill_in('Password confirmation', with: @user.password)
    click_button('Sign up')
    page.must_have_text('Welcome! You have signed up successfully.')
    page.must_have_text(@user.email)
  end

  test 'failed signup - duplicated email' do
    @user = FactoryGirl.create(:user)
    visit new_user_registration_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    fill_in('Password confirmation', with: @user.password)
    click_button('Sign up')
    page.must_have_text('Email has already been taken')
    page.wont_have_text("Logged in as")
  end

  test 'successful login' do
    @user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button('Log in')
    page.must_have_text('Signed in successfully.')
    page.must_have_text(@user.email)
  end

  test 'failed login - wrong email' do
    @user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in('Email', with: 'wrong@email.co')
    fill_in('Password', with: @user.password)
    click_button('Log in')
    page.must_have_text('Invalid email or password.')
    page.wont_have_text(@user.email)
  end

  test 'failed login - wrong password' do
    @user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: 'wrong password')
    click_button('Log in')
    page.must_have_text('Invalid email or password.')
    page.wont_have_text(@user.email)
  end

end