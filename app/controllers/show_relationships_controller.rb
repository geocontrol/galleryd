class ShowRelationshipsController < ApplicationController

  
  def create
    @show = Show.find(params[:show_relationship][:followed_id])
    current_user.follow!(@show)
    redirect_to @show
  end
  
  def destroy
    @show = ShowRelationship.find(params[:id]).followed
    current_user.unfollow!(@show)
    redirect_to @show
  end
    
end