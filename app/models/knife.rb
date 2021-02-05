class Knife < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :image
  belongs_to :owner
  validates :category, presence: true
  has_one_attached :featured_image

  def image_url
        url_for(self.featured_image)
  end

end
