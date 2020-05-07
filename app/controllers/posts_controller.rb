class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all.order('created_at desc')  
  	@posts_count = current_user.posts.length  
  end

  def create
    new_post = Post.new(user_id: current_user.id, content: params[:content], image: params[:image])
		
  
  	if new_post.save 
  		redirect_to root_path 
  	else 
  		redirect_to new_post_path 
  	end 
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
