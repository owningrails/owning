class ApplicationController < ActionController::Base
  protect_from_forgery
  self.responder = Responder
  
  protected
    def current_account
      current_user.try(:account)
    end
    helper_method :current_account
end