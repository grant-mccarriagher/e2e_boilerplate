module SiteName
  module Helper
    def set_page(page_model, page_ensure:true)
      # Ensure the pages container has been instantiated
      $loaded_pages ||= {}

      $loaded_pages[page_model] ||= SiteName::Page.const_get(page_model).new

      @page = $loaded_pages[page_model]
      ensure_page page_model if page_ensure
      wait_for_readiness
    end
  end
end
