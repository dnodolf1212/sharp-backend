class KnifeSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :brand, :category, :description, :price, :for_sale, :likes
  belongs_to :owner

end

 