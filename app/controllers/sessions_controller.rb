class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create] 
  
  def new
  end

  def create
    @user = User.find_by(handle: params[:handle])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      flash[:notice] = "Incorrect Username or Password"
      redirect_to login_path
    end
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end

end