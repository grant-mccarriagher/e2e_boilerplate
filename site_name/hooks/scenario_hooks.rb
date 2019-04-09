# Create a holder for data between steps in a scenario
Before do |scenario|
  @verify ||= Hash.new
  $verify ||= Hash.new
end

# Log in
Before('not @LoggedOut') do
  set_user
  login
end
