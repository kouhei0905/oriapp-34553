class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  belongs_to :user
  has_many :comments
  has_one_attached :image

  def self.search(search)
    if search != ""
      Book.where('title LIKE(?)', "%#{search}%")
    else
      Book.all
    end
  end

  with_options presence: true do
    validates :title
    validates :catch_copy
    validates :description
    validates :image
    validates :genre_id
  end
validates :genre_id, numericality: { other_than: 1 } 

end
