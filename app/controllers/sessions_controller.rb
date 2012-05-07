class SessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env['omniauth.auth']
#    render :text => auth.to_yaml

    unless @auth = Authorization.find_from_hash(auth)
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    
    self.current_user = @auth.user
    
    render :text => "Welcome, #{current_user.name}."
  end

  def failure
  end
end
