class CommentsController < ApplicationController
  before_action :set_article

  def create
    @comment = @article.comments.new(comment_params)

    if @comment.save
      flash.notice = "Kommentar erstellt"
      redirect_to article_path(@article)
    else
      flash.alert = "Kommentar konnte nicht erstellt werden"
      redirect_to article_path(@article)
    end
  end

  def destroy
    @comment = @article.comments.find(params[:id])

    if @comment.destroy
      flash.notice = "Kommentar gelöscht"
      redirect_to article_path(@article)
    else
      flash.alert = "Kommentar konnte nicht gelöscht werden"
      redirect_to article_path(@article)
    end
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
