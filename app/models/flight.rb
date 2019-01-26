class Flight < ApplicationRecord

  has_one  :airline
  has_many :passengers

end
