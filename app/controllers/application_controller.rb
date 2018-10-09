class ApplicationController < ActionController::Base
  before_action :clear_cache

  protect_from_forgery with: :exception
  include Spree::Core::ControllerHelpers::Order
  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Store
  include Spree::Core::ControllerHelpers::Common
  helper Spree::BaseHelper

def clear_cache
   response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
   response.headers["Pragma"] = "no-cache"
   response.headers["Expires"] = "Sun, 18 Oct 1992 00:00:00 GMT"
end

end
