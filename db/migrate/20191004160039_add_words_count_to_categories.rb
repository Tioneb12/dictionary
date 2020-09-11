class AddWordsCountToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :words_count, :integer
  end
end
