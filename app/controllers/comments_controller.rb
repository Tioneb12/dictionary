class CommentsController < ApplicationController

  def new
    @comment = Comment.new()
  end

  def create
    @word= Word.find(params[:comment][:word_id])
    @comment = @word.comments.create!(comment_params)
    redirect_to word_path(@word.slug, :anchor => "comment-#{@comment.id}")
  end

  private

  def comment_params
    params.require(:comment).permit(
      :pseudo,
      :email,
      :content,
      :spam,
      :word_id
    )
  end

end
