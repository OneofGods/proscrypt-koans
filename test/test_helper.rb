ENV['RAILS_ENV'] ||= 'test'
Dir[File.expand_path('test/support/*.rb')].each { |file| require file }

require_relative '../config/environment'
require_relative '../lib/minitest/koans_reporter'
require 'rails/test_help'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/fail_fast'

Minitest::Reporters.use! Minitest::Reporters::KoansReporter.new


include Minitest::HandsomeMatchers
include FileManipulationTestHelper

Minitest::Test.i_suck_and_my_tests_are_order_dependent!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.

  fixtures :all

  # Add more helper methods to be used by all tests here...
end
