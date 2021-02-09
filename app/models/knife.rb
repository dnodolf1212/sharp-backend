class Knife < ApplicationRecord
  belongs_to :owner
  validates :category, presence: true
  validates :description, presence: true

end
