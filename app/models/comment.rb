class Comment < ApplicationRecord
  belongs_to :word, counter_cache: true
end
