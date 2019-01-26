namespace :import do

  desc "Import airports from csv"
  task airports: :environment do
    filename = File.join Rails.root, "airports.csv"
      CSV.foreach(filename) do |row|
      id, name, city, country, iata, icao, latitude, longitude, altitude, tz, dst, time_zone, type, source = row
      Airport.create(name: name, city: city, country: country, iata: iata, icao: icao, latitude: latitude, longitude: longitude, altitude: altitude)

    end
  end
end
