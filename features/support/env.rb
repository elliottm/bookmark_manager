# Generated by cucumber-sinatra. (2013-11-05 15:39:52 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/bookmark_manager.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Bookmark_manager

class Bookmark_managerWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  Bookmark_managerWorld.new
end