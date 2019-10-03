class CommentsController < ApplicationController

  def new
  end

  def create
    @comment = Comment.new(comment_params.merge(user_id: current_user.id))
    if @comment.valid?
      @comment.save
    end
    redirect_back fallback_location: posts_path
  end

  def edit
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(content: params[:comment][:content])
    if @comment.valid? 
      redirect_to post_path(@comment.post)
    else
      flash[:errors] = @comment.errors.full_messages
      redirect_to edit_comment_path
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_back fallback_location: posts_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end

end
