class FollowsController < ApplicationController
    
    before_action :authenticate_user!
    
    def create
        Follow.create(followed_id: params[:followed_id],
                      follower_id: current_user.id)
    redirect_to users_show_path(:id =>params[:followed_id])
    end
    
    
    def destroy
        @followed =  params[:id]
        Follow.find_by(followed_id: params[:id],
                       follower_id: current_user.id).destroy
    redirect_to users_show_path(:id =>@followed)
    end
    
    
end
