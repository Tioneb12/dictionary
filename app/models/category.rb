class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :words, :inverse_of => :category

  scope :word,               -> { where(id: 1) }
  scope :adjective,          -> { where(id: 2) }
  scope :adverb,             -> { where(id: 3) }
  scope :verb,               -> { where(id: 4) }
  scope :expression,         -> { where(id: 5) }
  scope :prenom,             -> { where(id: 6) }

end
