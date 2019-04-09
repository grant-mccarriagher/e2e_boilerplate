module SiteName
  module Helper
    def ensure_page(page_model)
      page_class = SiteName::Page.const_get(page_model)

      # Make sure @page is set to the right model
      unless @page.is_a? page_class
        raise "@page is a #{@page.class} when #{page_model} was expected"
      end

      # Make sure we're at the correct URL
      begin
        @page.should be_displayed
      rescue RSpec::Expectations::ExpectationNotMetError
        puts "#{@page.class} is not displayed. Currently at #{current_url}"
        raise
      end

      wait_for_readiness
    end
  end
end
