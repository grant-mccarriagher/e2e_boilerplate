class SiteName::Page::HomePage < SitePrism::Page
  # URL for navigating to this page via the load method
  set_url('/homepage')

  # Regex pattern for verifying that the browser is currently at this page
  set_url_matcher(/\/homepage/)
end

Then(/^I should be logged in$/) do
  set_page :HomePage
end
