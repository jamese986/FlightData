namespace :import do

  desc "Import airports from csv"
  task airports: :environment do
    filename = File.join Rails.root, "airports.csv"
      CSV.foreach(filename) do |row|
      p row
    end
  end
end
