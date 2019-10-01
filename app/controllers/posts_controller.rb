class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.create(post_params.merge(user_id: @current_user.id))
    redirect_to post_path(@post)
  end

  def show
  end

  def edit
    @users = User.all
    @categories = Category.all
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
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
