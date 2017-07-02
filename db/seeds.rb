User.create!(name:  "HIGE")

99.times do |n|
  name  = Faker::Name.name
  User.create!(name: name)
end
