puts "🕴 Creating roles... "

r1 = Role.create(character_name: "Thomas Shelby")
r2 = Role.create(character_name: "Walter White")
r3 = Role.create(character_name: "Batman")
r4 = Role.create(character_name: "Superman")
r5 = Role.create(character_name: "Spiderman")

puts "🧐 Creating audtions..."

Audition.create!(actor: "Cillian Murphy", location: "11 Broadway", phone: 9430943294, hired: true, role_id: r1.id)
Audition.create!(actor: "Tom Hardy", location: "12 Broadway", phone: 943094323838, hired: false, role_id: r1.id)
Audition.create!(actor: "Benedict Cumberbatch", location: "13 Broadway", phone: 9430943373738, hired: false, role_id: r2.id)
Audition.create!(actor: "Bryan Cranston", location: "14 Broadway", phone: 9430943373888, hired: true, role_id: r2.id)
Audition.create!(actor: "Robert Pattinson", location: "15 Broadway", phone: 94309444543888, hired: true, role_id: r3.id)
Audition.create!(actor: "Ben Affleck", location: "16 Broadway", phone: 94309444543888, hired: false, role_id: r3.id)
Audition.create!(actor: "Henry Cavill", location: "17 Broadway", phone: 943093454543888, hired: true, role_id: r4.id)
Audition.create!(actor: "Tom Holland", location: "18 Broadway", phone: 943023234543888, hired: false, role_id: r5.id)

puts "🌱 Seeding done!"