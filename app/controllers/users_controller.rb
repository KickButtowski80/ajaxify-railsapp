class UsersController < ApplicationController
  def index
    @users = User.all
    # render js: "alert('The username to be displayed is: #{params[:name]}')"
  end

  def show
    # render js: "alert('The user name is : #{params[:id]} here ')"
    @user = User.find(params[:id])
    respond_to do |format|
      # format.html {redirect_to users_url }
      format.js
    end
  end
  
  def display    
    # render js: "alert('The user name is : #{params[:name]} ')"
    respond_to do |format|
      format.js 
    end
  end
  
  def about
    respond_to do |format|
      format.js
    end
  end
end
