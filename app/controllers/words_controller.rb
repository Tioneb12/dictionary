class WordsController < ApplicationController
  before_action :set_word, only: [:show]
  def index
    @words = Word.all
  end

  def show
    @comment = @word.comments.build
  end

  def new
    @word = Word.new()
  end

  def create
    @word = Word.new(word_params)
    if @word.save!
      redirect_to words_path
    else
      render :edit
    end
  end

  private

  def set_word
    @word = Word.friendly.find(params[:id])
  end

  def word_params
    params.require(:word).permit(
      :title,
      :content,
      :author_name,
      :author_email,
      :actived,
      :category_id
    )
  end
end
