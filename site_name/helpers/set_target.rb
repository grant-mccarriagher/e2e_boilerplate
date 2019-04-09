module SiteName
  module Helper
    # Sets the target hostname
    def set_target(target)
      $target = target
      Capybara.app_host = $target
    end
  end
end
