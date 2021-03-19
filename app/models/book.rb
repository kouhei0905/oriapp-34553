class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  belongs_to :user
  has_many :comments
  has_one_attached :image

validates :genre_id, numericality: { other_than: 1 } 

end