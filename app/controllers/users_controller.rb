class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:new, :create] 

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :handle, :password, :password_confirmation, :location, :bio, :img_url)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
