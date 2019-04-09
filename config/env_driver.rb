AfterConfiguration do
  # Don't run a RACK server
  Capybara.run_server = false

  # Set timeout for element checkers
  Capybara.default_max_wait_time = 10

  # Set SitePrism to automatically wait for existence of elements instead of throwing exceptions immediately
  SitePrism.configure do |config|
    config.use_implicit_waits = true
  end

  # Set Capybara port - use TEST_ENV_NUMBER to support multiple headless instances of the suite on one machine
  Capybara.server_port = 9887 + ENV['TEST_ENV_NUMBER'].to_i


  # Register the local Chrome driver
  Capybara.register_driver :chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new

    if headless?
      options.add_argument 'headless'
      options.add_argument 'disable-gpu'
    end

    Capybara::Selenium::Driver.new(app, :browser => :chrome, :options => options)
  end

  # Set the current and default driver to the environment specified driver
  Capybara.current_driver = :chrome
  Capybara.default_driver = :chrome
end

# Page Hooks - Provides the page model to tagged scenarios
Before do
  screen_width = page.execute_script('return screen.width;')
  screen_height = page.execute_script('return screen.height;')
  page.driver.browser.manage.window.resize_to(screen_width, screen_height)
end

# Set the host for testing
Before do
  set_target $env_keys[:targets][:default]
end
