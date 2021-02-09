class Owner < ApplicationRecord
  has_many :knives
  validates :ownername, :location, presence: true

end
