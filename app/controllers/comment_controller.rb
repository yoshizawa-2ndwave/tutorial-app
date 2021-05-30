class CommentController < ApplicationController
  def new
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to comment.blog, notice: "コメントを投稿しました。"
    else
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body, :blog_id)
    end
end
