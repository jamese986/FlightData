class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :airports, :county, :country
  end
end
