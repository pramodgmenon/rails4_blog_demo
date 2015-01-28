class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to home_index_path
  end
 
  private
    def comment_params
      params.require(:comment).permit(:name, :comment)
    end
end
