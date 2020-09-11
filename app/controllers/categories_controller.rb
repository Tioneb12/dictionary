class CategoriesController < ApplicationController

  def index
    if params[:category]
      @words = Word.where(category_id = params[:category])
    else
      @words = Word.all
    end
  end

  def show
    @category = Category.friendly.find(params[:id])
  end
end
