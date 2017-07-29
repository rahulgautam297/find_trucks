# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'roo'
book = Roo::Spreadsheet.open('trucks/file.csv')
  # load the first sheet
	list=book.sheet(0)

	for i in 2..list.last_row
    #fetch ith row
	   truck_row = list.row(i)
     puts truck_row[1]
     #location had to be fixed to void white space
     location = truck_row[23][1..truck_row[23].length-2]
     location = location.split(",")
     location = "#{location[0]},#{location[1][1..location[1].length-1]}"
     # Using ENUM for facility_type
     if truck_row[2].nil?
       Truck.create!(name: truck_row[1], facility_type:3, address:truck_row[5],
       location:location, food_items:truck_row[11], operational_time:truck_row[17])
     elsif truck_row[2].include? "Truck"
       Truck.create!(name: truck_row[1], facility_type:1, address:truck_row[5],
       location:location, food_items:truck_row[11], operational_time:truck_row[17])
     elsif truck_row[2].include? "Push Cart"
       Truck.create!(name: truck_row[1], facility_type:2, address:truck_row[5],
       location:location, food_items:truck_row[11], operational_time:truck_row[17])
     end
	end
