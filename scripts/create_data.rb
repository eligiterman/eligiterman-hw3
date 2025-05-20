Entry.destroy_all
Place.destroy_all

seoul = Place.new
seoul["name"] = "Seoul"
seoul.save

s1 = Entry.new
s1["title"] = "Palace Visit"
s1["description"] = "We watched the changing of the guards today"
s1["occurred_on"] = Date.new(2025, 03, 17)
s1["place_id"] = seoul["id"]
s1.save

s2 = Entry.new
s2["title"] = "Karoake Night"
s2["description"] = "We rented a karoake room after dinner"
s2["occurred_on"] = Date.new(2025, 03, 18)
s2["place_id"] = seoul["id"]
s2.save

bangkok = Place.new
bangkok["name"] = "Bangkok"
bangkok.save

b1 = Entry.new
b1["title"] = "Reclining Buddha"
b1["description"] = "We visited the largest reclining buddha statue in the world"
b1["occurred_on"] = Date.new(2025, 03, 19)
b1["place_id"] = bangkok["id"]
b1.save

b2 = Entry.new
b2["title"] = "Chinese Market"
b2["description"] = "We tried scorpion at the chinese market"
b2["occurred_on"] = Date.new(2025, 03, 20)
b2["place_id"] = bangkok["id"]
b2.save

whistler = Place.new
whistler["name"] = "Whistler"
whistler.save

w1 = Entry.new
w1["title"] = "Powder Day"
w1["description"] = "We carved up the mountain all morning!"
w1["occurred_on"] = Date.new(2024, 12, 15)
w1["place_id"] = whistler["id"]
w1.save

w2 = Entry.new
w2["title"] = "Massages"
w2["description"] = "We got massages at the St.Regis"
w2["occurred_on"] = Date.new(2024, 12, 16)
w2["place_id"] = whistler["id"]
w2.save

puts "There are now #{Place.all.count} places and #{Entry.all.count} entries."