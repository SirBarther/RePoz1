# This file should contain all the record creation needed to seed 
# the database with its default values. The data can then be loaded 
# with the rake db:seed (or created alongside the db with db:setup).

# Examples:

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manufacturer.create(name: "Ford", country: "USA")
Manufacturer.create(name: "Volkswagon", country: "Germany")
Manufacturer.create(name: "Honda", country: "Japan") 
Car.create(mid: "1", mname: "Fusion", color: "Black", year: "2010", mileage: "50000")
Car.create(mid: "2", mname: "Pasat", color: "Green", year: "2015", mileage: "0")
Car.create(mid: "3", mname: "Civic", color: "Silver", year: "1996", mileage: "140000")