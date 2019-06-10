begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
# require 'capybara-screenshot/cucumber'

#Docente(Carolina)
ENV['DOC']="carito"
ENV['DPWS']="carito123"

#Docente(Laura)
ENV['DOCL']="laurita"
ENV['DLPWS']="laura123"

#Estudiante(Julia)
ENV['EST']="Julia"
ENV['ESTPW']="julia1234"


Capybara.default_driver = :selenium

# Set the host the Capybara tests should be run against
  Capybara.app_host = ENV["CAPYBARA_HOST"]

# Set the time (in seconds) Capybara should wait for elements to appear on the page
Capybara.default_max_wait_time = 15
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.google.com"

class CapybaraDriverRegistrar
  # register a Selenium driver for the given browser to run on the localhost
  def self.register_selenium_driver(browser)
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => browser)
    end
  end
end

Capybara.server_host = '0.0.0.0'
# Register various Selenium drivers
#CapybaraDriverRegistrar.register_selenium_driver(:internet_explorer)
#CapybaraDriverRegistrar.register_selenium_driver(:chrome)
CapybaraDriverRegistrar.register_selenium_driver(:chrome)
Capybara.run_server = false
#World(Capybara)

