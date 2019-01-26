namespace :import do

  desc "Import flight routes from csv"
  task flights: :environment do
    filename = File.join Rails.root, "flights.csv"
      CSV.foreach(filename) do |row|
      p row
    end
  end
end
