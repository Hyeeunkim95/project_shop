class PostsController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_user
  def index
    @posts = Post.all.order('created_at desc')  
  	@posts_count = current_user.posts.length  
  end
  
  def new
    @following_id = params[:following_id]
    @archived_id = params[:archived_id] 
    
  	  
  end
  

  def create
    new_post = Post.new
    new_post.user_id = current_user.id
    new_post.archived_id = params[:archived_id]
    new_post.content = params[:content]
    new_post.image = params[:image]
    new_post.save
    redirect_to "/users/show/#{params[:archived_id]}"
  end

  def edit
    
    @post = Post.find(params[:id])
     
  end

  def update
    
    post = Post.find(params[:id])
    
    post.user_id = current_user.id
    post.archived_id = params[:archived_id]
    post.content = params[:content]
    post.image = params[:image]
    post.save
    
    redirect_to "/users/show/#{params[:archived_id]}"
    
  end

  def destroy
  end
  
  
  
end
