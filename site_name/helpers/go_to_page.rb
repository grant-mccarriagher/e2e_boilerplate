module SiteName
  module Helper
    def go_to_page(page_model, *args)
      page_class = SiteName::Page.const_get(page_model)
      page = page_class.new
      page.load(*args)
    end
  end
end
