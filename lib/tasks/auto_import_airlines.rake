namespace :import do

  desc "Import airlines from csv"
  task airlines: :environment do
    filename = File.join Rails.root, "airlines.csv"
      CSV.foreach(filename) do |row|
      p row
    end
  end
end
