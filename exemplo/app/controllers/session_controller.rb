class SessionController < ApplicationController
  def index
  end

  def create
    @user = User.login(params[:name],params[:password])
    if @user
      session[:user_id] = @user.id
      session[:user_name] = @user.name
      session[:user_login] = @user.login
      redirect_to session[:desired_url] | home_path
    else
      redirect_to :action => 'new'
    end
  end
end
