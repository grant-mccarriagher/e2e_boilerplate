module SiteName
  module Helper
    def click element
      wait_for_readiness

      sleep 0.1
      element.click
      sleep 0.1
      wait_for_readiness

    end
  end
end
