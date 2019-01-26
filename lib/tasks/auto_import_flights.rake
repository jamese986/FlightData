namespace :import do

  desc "Import flight routes from csv"
  task flights: :environment do
    filename = File.join Rails.root, "flights.csv"

      CSV.foreach(filename) do |row|
        price =  Faker::Number.decimal(3, 2)
        seat = Faker::Number.non_zero_digit
        departureTime = Faker::Time.between(DateTime.now - 1, DateTime.now)
        arrivalTime = Faker::Time.between(DateTime.now - 1, DateTime.now)

        airline, airline_id, source_airport, source_airport_id, destination_airport, destination_airport_id, codeshare, stops, equipment = row
        Flight.create(departureTime: departureTime, arrivalTime: arrivalTime, airlines: airline, base_airport: source_airport, seats: seat, price: price, destination: destination_airport, stops:stops, equipment: equipment)

    end
  end
end
