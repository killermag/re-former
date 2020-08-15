class UsersController < ApplicationController

  include UsersHelper


  def new 
    @user = User.new
  end

  def create 
    #@user = User.new user_whitelist
    #@user = User.new username: params[:username],password: params[:password],email: params[:email]
    @user = User.new user_whitelist
    if @user.save 
      redirect_to users_path
    else
      render :new 
    end
  end

  def index 
    @users = User.all 
  end

  def edit 
    @user = User.find params[:id]
  end

    
end
