class KnifeSerializer < ActiveModel::Serializer
  include Rails.application. routes.url_helpers
  attributes :id, :category, :brand, :price, :description, :for_sale, :likes

#  def featured_image 
#    if object.featured_image.attached?
#      {
#        url: rails_blob_url(object.featured_iamge)
#      }
#    end
#  end

end
# :featured_image