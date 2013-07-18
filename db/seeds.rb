# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Favorite.delete_all
Foodtype.delete_all
Foodtruck.delete_all
Location.delete_all
User.delete_all

l1 = Location.create(name: "Inwood")
l2 = Location.create(name: "Washington Heights")
l3 = Location.create(name: "Morningside Heights")
l4 = Location.create(name: "Harlem")
l5 = Location.create(name: "Upper West Side")
l6 = Location.create(name: "Upper East Side")
l7 = Location.create(name: "Midtown West")
l8 = Location.create(name: "Midtown East")
l9 = Location.create(name: "Murray Hill")
l10 = Location.create(name: "Chelsea")
l11 = Location.create(name: "Gramercy Park")
l12 = Location.create(name: "West Village")
l13 = Location.create(name: "Greenwich Village")
l14 = Location.create(name: "Nolita")
l15 = Location.create(name: "East Village")
l16 = Location.create(name: "Soho")
l17 = Location.create(name: "Tribeca")
l18 = Location.create(name: "China Town")
l19 = Location.create(name: "Lower East Side")
l20 = Location.create(name: "Financial District")

f1 = Foodtype.create(name: "Korean")
f2 = Foodtype.create(name: "Indian")
f3 = Foodtype.create(name: "American (New)")
f4 = Foodtype.create(name: "American (Traditional)")
f5 = Foodtype.create(name: "Mexican")
f6 = Foodtype.create(name: "Desserts")
f7 = Foodtype.create(name: "Seafood")
f8 = Foodtype.create(name: "Ice Cream")
f9 = Foodtype.create(name: "French")

ft1 = Foodtruck.create(name: "Wafels & Dinges", handle: "@waffletruck")
ft2 = Foodtruck.create(name: "Red Hook Lobster Pound", handle: "@Redhooklobster")
ft3 = Foodtruck.create(name: "Calexico", handle: "@CalexicoNYC")
ft4 = Foodtruck.create(name: "Van Leeuwen Artisan", handle: "@VLAIC")

ft1.location = l7
ft1.foodtype = f6
ft2.location = l20
ft2.foodtype = f7
ft3.location = l15
ft3.foodtype = f5
ft4.location = l16
ft4.foodtype = f8

ft1.save
ft2.save
ft3.save
ft4.save

puts "All done"