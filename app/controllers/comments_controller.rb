class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render :index
    else
      render :index
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body, :blog_id)
    end
end
