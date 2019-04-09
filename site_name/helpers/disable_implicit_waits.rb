module SiteName
  module Helper
    def disable_implicit_waits
      SitePrism.use_implicit_waits = false
    end
  end
end
