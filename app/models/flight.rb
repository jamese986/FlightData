class Flight < ApplicationRecord
  validate :price_range_limit

  paginates_per 10

  has_one  :airline
  has_many :passengers

  private

  def price_range_limit
    if price == 0
      error.add(:price, "cannot be 0")
    end
  end


  def passenger_booking_limit
    if passenger.exists? > 1
      error.add(:passenger, "can only be booked once per flight")
    end
  end
end
