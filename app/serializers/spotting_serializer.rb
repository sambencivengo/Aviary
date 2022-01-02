class SpottingSerializer < ActiveModel::Serializer
  attributes :id, :notes, :image, :lat, :long, :bird
  
  def bird
    self.object.bird
  end

  has_one :user
  # has_one :bird
end
