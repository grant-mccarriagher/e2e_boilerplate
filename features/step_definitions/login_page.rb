class SiteName::Page::LoginPage < SitePrism::Page
  # URL for navigating to this page via the load method
  set_url('/login')

  # Regex pattern for verifying that the browser is currently at this page
  set_url_matcher(/\/login/)

  element :username, 'input[name=b]'
  element :password, 'input[name=p]'
  element :submit, 'input[value=Anmelden]'
end

Given(/^I have reached the login page$/) do
  load_page :LoginPage
end

When(/^I enter a username$/) do
  @page.username.set @current_user[:username]
end

When(/^I enter a password$/) do
  @page.password.set @current_user[:password]
end

When(/^I click submit$/) do
  click @page.submit
end

Then(/^I should be logged in$/) do
  @page.password.set @current_user[:password]
end
