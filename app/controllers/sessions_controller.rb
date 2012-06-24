class SessionsController < ApplicationController
  def new
  end

#  def create  
#    user = User.from_omniauth(env["omniauth.auth"])  
#    session[:user_id] = user.id  
#    redirect_to root_url, notice: "Signed in!"  
#  end  
  
  def destroy  
    session[:user_id] = nil  
    redirect_to root_url, notice: "Signed out!"  
  end  
  
  def failure  
    redirect_to root_url, alert: "Authentication failed, please try again."  
  end

  def create
    raise env['omniauth.auth'].to_yaml
#    auth = request.env['omniauth.auth']

#    unless @auth = Authorization.find_from_hash(auth)
#      @auth = Authorization.create_from_hash(auth, current_user)
#    end
    
#    self.current_user = @auth.user
    
#    redirect_to galleries_url, notice: "Welcome, #{current_user.name}."
  end

#  def destroy
#    session[:user_id] = nil
#    redirect_to galleries_url, notice: "Signed out!"
#  end
  
#  def failure
#    redirect_to galleries_url, alert: "Authentication failed, please try again."
#  end
end
