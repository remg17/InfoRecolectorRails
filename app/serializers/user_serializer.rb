class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :lastname, :email, :password
end
