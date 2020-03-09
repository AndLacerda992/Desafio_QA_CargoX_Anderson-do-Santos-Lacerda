require "rspec"
require "cucumber"
require "selenium/webdriver"
require "selenium-webdriver"
require "capybara/dsl"
require "pry"

include Capybara::DSL

Capybara.register_driver :selenium do |cargox|
  Capybara::Selenium::Driver.new(cargox, :browser => :chrome)
end

Capybara.configure do |config|
  Capybara.current_driver = :selenium
  config.default_max_wait_time = 5
  Capybara.ignore_hidden_elements = false
  Capybara.page.driver.browser.manage.window.maximize
end

ENV_TEST = YAML.load_file(File.dirname(__FILE__) + "/config/acesso.yml")
