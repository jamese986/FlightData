class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.datetime :departureTime
      t.datetime :arrivalTime
      t.integer :seats
      t.integer :price
      t.string :destination
      t.string :base_airport
      t.integer :stops
      t.string :equipment

      t.timestamps
    end
  end
end
