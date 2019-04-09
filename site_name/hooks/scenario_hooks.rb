# Create a holder for data between steps in a scenario
Before do |scenario|
  @verify ||= Hash.new
  $verify ||= Hash.new
end

# Set default user
Before do |scenario|
  set_user
end

# Log in
Before('not @LoggedOut') do |scenario|
  login
end
