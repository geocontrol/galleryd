class SessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env['omniauth.auth']
 # auth = User.from_omniauth(env["omniauth.auth"])
#    render :text => auth.to_yaml

    unless @auth = Authorization.find_from_hash(auth)
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    
    self.current_user = @auth.user
    
    redirect_to galleries_url, notice: "Welcome, #{current_user.name}."
  end

  def destroy
    session[:user_id] = nil
    redirect_to galleries_url, notice: "Signed out!"
  end
  
  def failure
    redirect_to galleries_url, alert: "Authentication failed, please try again."
  end
end
