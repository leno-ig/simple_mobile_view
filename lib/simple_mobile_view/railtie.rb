require "rails"

module SimpleMobileView
  class Railtie < Rails::Railtie
    config.to_prepare do
      ApplicationController.class_eval do
        include SimpleMobileView::Filter
        before_filter :set_ua
      end
    end
  end
end
