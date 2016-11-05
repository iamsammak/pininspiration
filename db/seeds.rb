# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   books = Book.create([{ name: 'Fresh off the Boat' }, { name: '1Q84' }])
#   Author.create(name: 'Haruki Murakami', city: cities.second)

Pin.destroy_all
Board.destroy_all
User.destroy_all

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

Board.create!(title: "Studio Ghilbi", description: "Best films ever", user_id: 1)
Board.create!(title: "Digital illustrations", description: "Imagination in the clouds", user_id: 1)
Board.create!(title: "Design", description: "...is Life", user_id: 1)
Board.create!(title: "Photography", description: "Just go shoot", user_id: 1)
Board.create!(title: "Books on Books", description: "Soak in some knowledge", user_id: 1)
Board.create!(title: "Travel", description: "Wanderlust", user_id: 1)

Board.create!(title: "Sports", description: "Sports", user_id: 2)
Board.create!(title: "Youtube", description: "My Friends", user_id: 2)
Board.create!(title: "Books", description: "Read some", user_id: 2)

Board.create!(title: "Travel", description: "Wanderlust", user_id: 3)
Board.create!(title: "Celebrities", description: "Imagination in the clouds", user_id: 3)
Board.create!(title: "Cute animals", description: "I want them all", user_id: 3)
Board.create!(title: "Podcast", description: "For the commutes", user_id: 3)
Board.create!(title: "Home decor", description: "For my dream house", user_id: 3)

Board.create!(title: "Sunglasses", description: "Can't have enough", user_id: 4)
Board.create!(title: "Food porn", description: "Pics or it didn't happen", user_id: 4)
Board.create!(title: "Travel", description: "Next adventure", user_id: 4)
Board.create!(title: "Fashion", description: "Ideas", user_id: 4)

Board.create!(title: "Movies", description: "To watch later", user_id: 5)
Board.create!(title: "Flower Arrangements", description: "Back to the roots", user_id: 5)
Board.create!(title: "Food", description: "Nom nom noms", user_id: 5)
Board.create!(title: "Hong Kong", description: "Travel Ideas", user_id: 5)

Board.create!(title: "Family Trips", description: "Plan the next trip", user_id: 6)
Board.create!(title: "Pokemon Go", description: "Gotta Catch em' All", user_id: 6)
Board.create!(title: "Books on Books", description: "Soak in some knowledge", user_id: 6)
