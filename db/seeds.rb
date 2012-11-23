# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all

users = [
  {:name => "Bernard Chan", :phone_no => "3125618713"},  
  {:name => "Ashley Wrobel", :phone_no => "7086422682"}
]

User.create users