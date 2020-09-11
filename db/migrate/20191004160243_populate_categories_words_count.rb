class PopulateCategoriesWordsCount < ActiveRecord::Migration[6.0]
  def up
    Category.find_each do |category|
      Category.reset_counters(category.id, :words)
    end
  end
end
