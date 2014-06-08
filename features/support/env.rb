#require 'rspec/expectations'
require 'capybara/rspec'
require 'capybara'
require 'capybara/cucumber'
require 'test/unit/assertions'

ENV['LANG'] = "zh_CN.UTF-8"

World(Test::Unit::Assertions)

Capybara.default_driver = :selenium
Capybara.app_host = "https://duckduckgo.com/"
World(Capybara)
