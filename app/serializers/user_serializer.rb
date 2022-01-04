class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :lat, :lng

  
  
  has_many :spottings

end
