class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  private
  	def require_login
  		unless !session[:user_id].blank?
  			redirect_to login_path, flash: { message: "You need to login to access the page." }
  		end
  	end
end
