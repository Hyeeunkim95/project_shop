class HomeController < ApplicationController
  def index
    @user = User.all
    @users = User.where(username: params[:search_text])
  end
 
  def show
  end 
 
  def viplists
   @user = User.all
  end

 def search 
   text = params[:search_path]
   redirect_to "/home/index/#{text}"
 end 
end
