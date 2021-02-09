class Knife < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :owner
  validates :category, presence: true
  validates :description, presence: true

end
