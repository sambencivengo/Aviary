class Spotting < ApplicationRecord
  belongs_to :user
  belongs_to :bird
  validates :lat, :long, :bird_id, :date, presence: true

end
