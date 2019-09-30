class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(users_params)
    redirect_to user_path(@user)
  end

  def show
  end

  def edit
  end

  def update
    @user.update(users_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def users_params
    params.require(:user).permit(:first_name, :last_name, :handle, :password, :location, :bio, :img_url)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
