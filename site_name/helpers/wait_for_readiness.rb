module SiteName
  module Helper
    def wait_for_readiness
      # The method is being called from outside a page model
      if @page != nil
        @page.wait_for_readiness
        # The method is being called from inside a page model
      elsif parent.respond_to? :wait_for_readiness
        parent.wait_for_readiness
      end
    end
  end
end
