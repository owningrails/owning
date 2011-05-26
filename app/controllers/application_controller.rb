class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def self.responder
    Responder
  end
end
