module SiteName
  module Helper
    def enable_implicit_waits
      SitePrism.use_implicit_waits = true
    end
  end
end
