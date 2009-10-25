# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :needs_login
  before_filter :load_projects
  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  private
  def needs_login
    redirect_to :controller => 'session', :action => 'new' unless session[:user_id] || (controller_name=='session')
    session[:user_id]
  end
  def load_projects
    @allprojs = [Project.new].concat Project.all
  end
end
