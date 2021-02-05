class KnifeSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :category, :brand, :price, :description, :for_sale, :likes, :featured_image

  def featured_image 
    if object.featured_image.attached?
      {
        url: rails_blob_url(object.featured_image)
      }
    end
  end

end
