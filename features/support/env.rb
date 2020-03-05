require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'faker'
require 'selenium/webdriver'


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://automationpractice.com/index.php"
end