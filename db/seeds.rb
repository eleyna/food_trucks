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
l21 = Location.create(name: "Dumbo")
l22 = Location.create(name: "Williamsburg")

f1 = Foodtype.create(name: "Korean")
f2 = Foodtype.create(name: "Indian")
f3 = Foodtype.create(name: "American (New)")
f4 = Foodtype.create(name: "American (Traditional)")
f5 = Foodtype.create(name: "Mexican")
f6 = Foodtype.create(name: "Desserts")
f7 = Foodtype.create(name: "Seafood")
f8 = Foodtype.create(name: "Ice Cream")
f9 = Foodtype.create(name: "French")
f10 = Foodtype.create(name: "Comfort")
f11 = Foodtype.create(name: "Thai")
f12 = Foodtype.create(name: "Pizza")
f13 = Foodtype.create(name: "German/Austrian")
f14 = Foodtype.create(name: "Polish")
f15 = Foodtype.create(name: "Vegetarian/Vegan")
f16 = Foodtype.create(name: "Middle Eastern")
f17 = Foodtype.create(name: "Latin American")

ft1 = Foodtruck.create(name: "Taim", handle: "@TaimMobile")
ft2 = Foodtruck.create(name: "Schnitzel & Things", handle: "@schnitznthings")
ft3 = Foodtruck.create(name: "Nuchas", handle: "@NuchasNYC")
ft4 = Foodtruck.create(name: "Milk Truck", handle: "@milktrucknyc")
ft5 = Foodtruck.create(name: "Sweetery", handle: "@SweeteryNYC")
ft6 = Foodtruck.create(name: "Morris Grilled Cheese", handle: "@morristruck")
ft7 = Foodtruck.create(name: "The Cinnamon Snail", handle: "@VeganLunchTruck")
ft8 = Foodtruck.create(name: "COOLHAUS", handle: "@COOLHAUS")
ft9 = Foodtruck.create(name: "Wafels & Dinges", handle: "@waffletruck")
ft10 = Foodtruck.create(name: "Red Hook Lobster Pound", handle: "@Redhooklobster")
ft11 = Foodtruck.create(name: "Calexico", handle: "@CalexicoNYC")
ft12 = Foodtruck.create(name: "Van Leeuwen Artisan", handle: "@VLAIC")

ft1.location = l20
ft1.foodtype = f16
ft2.location = l13
ft2.foodtype = f13
ft3.location = l15
ft3.foodtype = f17
ft4.location = l17
ft4.foodtype = f10
ft5.location = l7
ft5.foodtype = f6
ft6.location = l21
ft6.foodtype = f10
ft7.location = l19
ft7.foodtype = f15
ft8.location = l22
ft8.foodtype = f8
ft9.location = l5
ft9.foodtype = f6
ft10.location = l10
ft10.foodtype = f7
ft11.location = l14
ft11.foodtype = f5
ft12.location = l16
ft12.foodtype = f8

ft1.save
ft2.save
ft3.save
ft4.save
ft5.save
ft6.save
ft7.save
ft8.save
ft9.save
ft10.save
ft11.save
ft12.save


puts "All done"