# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.where(email: "stonedaddies@gmail.com", password: "Stonedaddies4me", password_confirmation: "Stonedaddies4me" role: "Admin").first_or_create
User.where(email: "austinjuliuskim@gmail.com", password: "Stonedaddies4you",password_confirmation: "Stonedaddies4you", role: "Admin").first_or_create
