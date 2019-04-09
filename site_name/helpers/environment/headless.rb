module SiteName
  module Helper
    # Loads headless chrome in xvfb
    def headless?
      !!ENV['HEADLESS']
    end
  end
end
