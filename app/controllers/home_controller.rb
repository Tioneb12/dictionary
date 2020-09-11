class HomeController < ApplicationController
  def index
    @categories = Category.all
    @words = Word.all
  end
end
