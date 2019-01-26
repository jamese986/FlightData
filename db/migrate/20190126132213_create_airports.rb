class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name
      t.string :city
      t.string :county
      t.string :iata
      t.string :icao
      t.float :latitude
      t.float :longitude
      t.float :altitude

      t.timestamps
    end
  end
end
