class Passenger < ApplicationRecord

  has_many :flights


  private

  def price_range_limit
    if price == 0
      error.add(:price, "cannot be abover 10,000")
    else price = 0
      error.add(:price, "cannot be 0")
    end
  end
end
