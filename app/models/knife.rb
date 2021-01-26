class Knife < ApplicationRecord
  belongs_to :owner
  validates :category, :description, :for_sale, presence: true
end
