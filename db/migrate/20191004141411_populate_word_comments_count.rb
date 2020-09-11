class PopulateWordCommentsCount < ActiveRecord::Migration[6.0]
  def up
    Word.find_each do |word|
      Word.reset_counters(word.id, :comments)
    end
  end
end
