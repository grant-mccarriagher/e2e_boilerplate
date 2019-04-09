require 'rubygems'
require 'cucumber'
require 'selenium-webdriver'

# Simplifies loading model requirements
require 'require_all'

require 'rspec'

# Simplifies interacting with native selenium elements
require 'capybara'
require 'capybara/cucumber'

# Used for modeling pages and sections
require 'site_prism'

# Used for loading the config file and accessing items as symbols instead of strings
require 'ostruct'

# Date and Time helpers (ie. 1.day 20.years)
require 'time'
require 'active_support/all'

# Load the configs
load 'config/env_config.rb'
load 'config/env_driver.rb'

require_all 'SiteName'

require 'pry-rescue'
require 'pry-stack_explorer'
require 'colorize'
