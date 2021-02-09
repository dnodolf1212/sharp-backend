class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :ownername, :location
  has_many :knives
end
