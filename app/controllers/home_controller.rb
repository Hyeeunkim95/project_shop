class HomeController < ApplicationController
  def index
    @user = User.all
  end
 
  def show
  end 
 
  def viplists
   @user = User.all
  end

end
