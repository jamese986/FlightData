class Flight < ApplicationRecord
  paginates_per 10

  has_one  :airline
  has_many :passengers

end
