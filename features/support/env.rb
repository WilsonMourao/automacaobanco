require "capybara"
require "capybara/dsl"
require "capybara/rspec/matchers"
require "selenium-webdriver"
require "site_prism"
require "rspec"
require "report_builder"

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  #config.default_driver = :selenium_chrome_headless
  config.app_host = "http://www.way2automation.com/angularjs-protractor/banking/#/login"
end
