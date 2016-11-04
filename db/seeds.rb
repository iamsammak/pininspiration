# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: "sam", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478122699/pinspiration/seed/creative_giraffe.jpg",
description: "Sam I am, I like green eggs and ham\n
I like nonsense; it wakes up the brain cells")

User.create!(username: "jeremy", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478122699/pinspiration/seed/creative_giraffe.jpg",
description: "Jerm Jerm Jerm\n
Today you are you! That is truer than true!\n
There is no one alive who is you-er than you!")

User.create!(username: "emily", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478122699/pinspiration/seed/creative_giraffe.jpg",
description: "Think left and think right and think low and think high.\n
Oh, the thinks you can think up if only you try!")

User.create!(username: "jodie", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478122699/pinspiration/seed/creative_giraffe.jpg",
description: "Step with care and great tact, and remember the Life's a Great Balancing Act")

User.create!(username: "christine", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478122699/pinspiration/seed/creative_giraffe.jpg",
description: "The more that you read, the more things you will know.\n
The more that you learn, the more places you'll go.")

User.create!(username: "roger", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478122699/pinspiration/seed/creative_giraffe.jpg",
description: "Today was good. Today was fun. Tommorrow is another one.")
