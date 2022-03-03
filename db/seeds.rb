Audition.destroy_all
Role.destroy_all

puts "Seeding Roles..."
  10.times do
    character_name = Faker::Name.name
    Role.create(character_name: character_name)
end

puts "Seeding Auditions.."
 10.times do 
  actor = Faker::Name.name
  location = ""
  phone = rand(10..100)
  hired = rand(0..1)
  role_id = Role.ids.sample

  Audition.create(actor: actor, location: location, phone: phone, hired: hired, role_id: role_id)
 end