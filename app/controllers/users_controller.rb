class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @plans = @user.plans
    @like_plans = @user.like_plans
  end

  def follows
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end

  def like
   user = User.find(params[:id])
   @likes = user.likes_plan
  end


end
