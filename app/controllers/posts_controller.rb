class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:index, :show]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params.merge(user_id: @current_user.id))
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def show
    @owner = @post.user == current_user
    @comment = Comment.new
  end

  def edit
    @users = User.all
    @categories = Category.all
  end

  def update
    if @post.valid?
      @post.update(post_params.merge(user_id: @current_user.id))
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to edit_post_path
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id, :category_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
