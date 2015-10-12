class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def user_session(user)
  	session[:user_id] = user.id
  end

  def new
  end

  def create
  	@user = User.find_by(email: params[:email])

  	if @user && @user.authenticate(params[:password])
  		user_session(@user)
  		redirect_to home_path  		
  	end
  end

  def destroy
  	reset_session

  	redirect_to root_path
  end
end
