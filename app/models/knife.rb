class Knife < ApplicationRecord
  belongs_to :owner
  validates :category, presence: true
  #has_one_attached :featured_image
end
