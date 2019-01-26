class Airport < ApplicationRecord

  has_many :flights
  has_many :airlines
  has_many :passengers

end
