class AddFieldsToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :airlines, :string
  end
end
