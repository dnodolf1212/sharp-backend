class KnifeSerializer < ActiveModel::Serializer
  attributes :id, :category, :brand, :price, :description, :for_sale, :likes
end
