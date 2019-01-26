namespace :import do

  desc "Import airlines from csv"
  task airlines: :environment do
    filename = File.join Rails.root, "airlines.csv"
      CSV.foreach(filename) do |row|
        id, name, null, iata, icao, callsign, country = row
        Airline.create(name: name, iata: iata, icao: icao, country: country)
    end
  end
end
