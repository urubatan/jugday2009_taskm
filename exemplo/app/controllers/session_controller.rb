class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.logon(params[:login],params[:password])
    if @user
      session[:user_id] = @user.id
      session[:user_name] = @user.name
      session[:user_login] = @user.login
      redirect_to session[:desired_url] || root_path
    else
      redirect_to :action => 'new'
    end
  end
end
