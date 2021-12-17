class SpottingSerializer < ActiveModel::Serializer
  attributes :id, :notes, :image, :lat, :long
  has_one :user
  has_one :bird
end
