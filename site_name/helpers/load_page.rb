module SiteName
  module Helper
    def load_page(page_model, *args)
      go_to_page page_model, *args
      set_page page_model
    end
  end
end
