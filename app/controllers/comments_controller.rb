class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    # @post = Post.find(params[:id])
    # @comments = Comment.all
    # @comment = Comment.new(post_id: params[:post_id])
  end

  def create
    @comment = Comment.new(comment_params.merge(user_id: current_user.id))
    if @comment.valid?
      @comment.save
    end
    redirect_back fallback_location: posts_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
  
end
