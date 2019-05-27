module AwesomeBackUrl
  class Railtie < ::Rails::Railtie
    initializer 'awesome_back_url.helpers' do
      ActiveSupport.on_load :action_view do
        ActionController::Base.send :include, AwesomeBackUrl::Helpers
      end
    end
  end
end
