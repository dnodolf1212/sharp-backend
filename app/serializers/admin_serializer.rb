class AdminSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :password_digest
end
