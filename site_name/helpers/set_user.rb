module SiteName
  module Helper
    def set_user
      @current_user = $env_keys[:users][:default].dup
    end
  end
end
