ENV['RAILS_ENV'] ||= 'test'
require 'simplecov'
SimpleCov.start 'rails'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/pride'
require 'factory_girl'
FactoryGirl.find_definitions
require 'minitest/rails/capybara'
require 'capybara/rails'
require 'capybara/poltergeist'
require 'capybara-screenshot'
require 'capybara-screenshot/minitest'

Capybara::Screenshot.autosave_on_failure = true

# Keep only the screenshots generated from the last failing test suite
Capybara::Screenshot.prune_strategy = :keep_last_run

# Capybara.save_and_open_page_path = '/test/screenshots'
Capybara::Screenshot.register_filename_prefix_formatter(:minitest) do |test_case|
  test_name = test_case.respond_to?(:name) ? test_case.name : test_case.__name__
end

# Capybara.javascript_driver = :poltergeist

# Improved Minitest output (color and progress bar)
require 'minitest/reporters'
Minitest::Reporters.use!(
    Minitest::Reporters::ProgressReporter.new,
    ENV,
    Minitest.backtrace_filter)

# for just minitest/unit
class AcceptanceTest < Minitest::Test
  include Capybara::DSL
  include Capybara::Assertions

  def teardown
  Capybara.reset_session!
  Capybara.use_default_driver
  end
end







class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include FactoryGirl::Syntax::Methods
  # Add more helper methods to be used by all tests here...
end

# As per https://github.com/plataformatec/devise#test-helpers
class ActionController::TestCase
  include Devise::TestHelpers
  include Warden::Test::Helpers
  Warden.test_mode!
end

# From https://github.com/chriskottom/minitest_cookbook_source/issues/3 - a solution of 'db locked' issue for selenium
class ActiveRecord::Base
  mattr_accessor :shared_connection
  @@shared_connection = nil
  def self.connection
    @@shared_connection || retrieve_connection
  end
end
ActiveRecord::Base.shared_connection = ActiveRecord::Base.connection