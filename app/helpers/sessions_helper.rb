module SessionsHelper
	def logged_in?
		!session[:user_id].blank? ? true : false
	end
end
