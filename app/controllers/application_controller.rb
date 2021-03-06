class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  helper_method :current_user, :signed_in?
  
  def get_gallery(id)
    @gallery = Gallery.find_by_id(params[:id])
  end
end
