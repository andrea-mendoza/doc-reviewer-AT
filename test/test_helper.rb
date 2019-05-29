require 'coveralls'
require 'simplecov'

# SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start 'rails' do
  add_filter '/bin/'
  add_filter '/db/'
  add_filter '/test/' # for minitest
  # add_filter '/app/mailers/'
  # add_filter '/app/helpers/'
  # add_filter '/app/channels/'
  # add_filter '/app/assets/'
  add_filter '/app/jobs/'
  # add_filter '/app/controllers/'
end

# Coveralls.wear!('rails')

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
 
  # Add more helper methods to be used by all tests here...
end


