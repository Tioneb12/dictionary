class Word < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :category, :inverse_of => :words, counter_cache: true
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments

  scope :published,          -> { where(published: true) }
  scope :word,               -> { where(category_id: 1) }
  scope :adjective,          -> { where(category_id: 2) }
  scope :adverb,             -> { where(category_id: 3) }
  scope :verb,               -> { where(category_id: 4) }
  scope :expression,         -> { where(category_id: 5) }
  scope :prenom,             -> { where(category_id: 6) }
end
