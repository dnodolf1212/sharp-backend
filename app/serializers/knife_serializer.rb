class KnifeSerializer < ActiveModel::Serializer
  attributes :id, :brand, :category, :description, :price, :for_sale, :likes
  belongs_to :owner

end

 