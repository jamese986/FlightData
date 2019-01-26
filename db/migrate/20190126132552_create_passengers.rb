class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :mobile
      t.integer :passenger_id

      t.timestamps
    end
  end
end
