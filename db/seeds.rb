# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

json = open("https://sandbox-api.brewerydb.com/v2/hops/?key=#{ENV['BREWERY_API']}").read

obj = JSON.parse(json)

obj['data'].each do |hop|
  desc = hop['description'] || "No description yet"
  Hop.create!(
    name: hop['name'],
    description: desc
    )
end
