module SiteName
  module Extension
    module SitePrism
      module Page

        def document_ready?
          result = evaluate_script 'document.readyState === "complete"'
          result
        end

        def finished_jquery_requests?
          result = evaluate_script '(typeof jQuery === "undefined") || (jQuery.active == 0)'
          # STDOUT.printf "jquery is #{result}\n"
          result
        end

        def finished_angular_requests?
          result = evaluate_script '(typeof angular === "undefined") || (angular.element(".ng-scope").injector().get("$http").pendingRequests.length == 0)'
          # STDOUT.printf "angular is #{result}\n"
          result
        end

        def no_overlays?
          result = evaluate_script '(typeof jQuery === "undefined") || (jQuery(".blockUI").length == 0)'
          # STDOUT.printf "overlays is #{result}\n"
          result
        end

        def finished_all_ajax_requests?
          result = finished_jquery_requests? && finished_angular_requests?
          # STDOUT.printf "all ajax is #{result}"
          result
        end

        def wait_for_readiness
          Timeout.timeout(::Capybara.default_max_wait_time) do
            loop until document_ready? && finished_all_ajax_requests? && no_overlays?
          end
          sleep 0.5
        end
      end
    end
  end

  SitePrism::Page.include Extension::SitePrism::Page
end
