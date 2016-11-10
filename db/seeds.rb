# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   books = Book.create([{ name: 'Fresh off the Boat' }, { name: '1Q84' }])
#   Author.create(name: 'Haruki Murakami', city: cities.second)

Follow.destroy_all
Pin.destroy_all
Board.destroy_all
User.destroy_all

User.create!(username: "miyazaki", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/c_crop,h_365,w_502/v1478627769/pinspiration/profile_pics/hayao_miyazki.jpg",
description: "Creating animation means creating a fictional world.\n
That world soothes the spirit of those who are disheartened and exhausted from dealing with the sharp edges of reality")

User.create!(username: "totoro", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/c_crop,h_798,q_67,w_700/v1478626686/pinspiration/profile_pics/totoro.jpg",
description: "Everybody, try laughing. Then whatever scares you will go away!\n
I like nonsense; it wakes up the brain cells")

User.create!(username: "baymax", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478626685/pinspiration/profile_pics/baymax.jpg",
description: "Hello. I am Baymax, your peronal healthcare companion.\n
I heard a sound of distress. What seems to be the trouble?\n
On a scale of one to ten, how would you rate your pain?")

User.create!(username: "giraffe", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/c_crop,h_650,r_0,w_650/v1478122699/pinspiration/seed/creative_giraffe.jpg",
description: "Think left and think right and think low and think high.\n
Oh, the thinks you can think up if only you try!")

User.create!(username: "chihiro", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478627280/pinspiration/profile_pics/chihiro.jpg",
description: "Once you've met someone you never really forget them.")

User.create!(username: "lorax", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/c_thumb,h_917,w_1318/v1478627456/pinspiration/profile_pics/lorax.jpg",
description: "Today you are you! That is truer than true!\n
There is no one alive who is you-er than you!")

User.create!(username: "horton", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478627514/pinspiration/profile_pics/horton.jpg",
description: "Today was good. Today was fun. Tommorrow is another one.")

User.create!(username: "jojo", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478627614/pinspiration/profile_pics/jojo.jpg",
description: "Sometimes you have to fight for the things that are worth fighting for.")

# 1 - 3
Board.create!(title: "Studio Ghilbi", description: "Best films ever", user_id: 1)
Board.create!(title: "Digital illustrations", description: "Imagination in the clouds", user_id: 1)
Board.create!(title: "Simple colors", description: "Design...is life", user_id: 1)
# 4 - 6
Board.create!(title: "Life Lessons", description: "Never stop learning", user_id: 1)
Board.create!(title: "Books that I read", description: "Knowledge", user_id: 1)
Board.create!(title: "Travel", description: "Places I want to go", user_id: 1)
# 7 8 9
Board.create!(title: "Sports", description: "Sports", user_id: 2)
Board.create!(title: "Youtube", description: "Do you think Totoro can start a youtube channel", user_id: 2)
Board.create!(title: "Buzzfeed", description: "I can read these articles all day", user_id: 2)
# 10 11 12
Board.create!(title: "Celebrities", description: "My patients", user_id: 3)
Board.create!(title: "Music", description: "Music that Tadashi downloaded onto my harddrive", user_id: 3)
Board.create!(title: "Design", description: "Little do you know, I actually came upon with my inflatable design (not Tadashi's idea)", user_id: 3)
# 13 14 15
Board.create!(title: "Digital Illustrations", description: "Imagination in the Clouds", user_id: 3)
Board.create!(title: "Home decor", description: "For my dream house", user_id: 3)
Board.create!(title: "Photography", description: "My left eye is a camera", user_id: 3)
# 16 17 18 19
Board.create!(title: "NBA", description: "2016-2017 season has begun!", user_id: 4)
Board.create!(title: "Food porn", description: "Pics or it didn't happen", user_id: 4)
Board.create!(title: "Travel", description: "Next adventure", user_id: 4)
Board.create!(title: "Fashion", description: "Ideas", user_id: 4)
#20
Board.create!(title: "Movies", description: "To watch later", user_id: 5)
Board.create!(title: "Flower Arrangements", description: "Back to the roots", user_id: 5)
Board.create!(title: "Recipes", description: "Momma wants me to learn how to cook", user_id: 5)
Board.create!(title: "Hong Kong", description: "Travel Ideas", user_id: 5)

Board.create!(title: "Family Trips", description: "Plan the next trip", user_id: 6)
Board.create!(title: "Pokemon Go", description: "Gotta Catch em' All", user_id: 6)
Board.create!(title: "Books on Books", description: "Soak in some knowledge", user_id: 6)

Board.create!(title: "Things I like", description: "I like", user_id: 7)
Board.create!(title: "Celebrities", description: "Hello friends", user_id: 7)
Board.create!(title: "Humor", description: "An elephant never forgets...a joke", user_id: 7)

Board.create!(title: "Things I like", description: "Want them", user_id: 8)
Board.create!(title: "Cartoons", description: "Guilty pleasure", user_id: 8)
Board.create!(title: "Game of Thrones", description: "Winter is coming", user_id: 8)

Follow.create!(followee_id: 1, follower_id: 3)
Follow.create!(followee_id: 2, follower_id: 3)
Follow.create!(followee_id: 4, follower_id: 3)
Follow.create!(followee_id: 6, follower_id: 3)
Follow.create!(followee_id: 5, follower_id: 3)

Follow.create!(followee_id: 5, follower_id: 2)
Follow.create!(followee_id: 6, follower_id: 2)
Follow.create!(followee_id: 1, follower_id: 2)
Follow.create!(followee_id: 3, follower_id: 2)

Follow.create!(followee_id: 3, follower_id: 1)
Follow.create!(followee_id: 2, follower_id: 1)
Follow.create!(followee_id: 4, follower_id: 1)
Follow.create!(followee_id: 5, follower_id: 1)
Follow.create!(followee_id: 6, follower_id: 1)

Follow.create!(followee_id: 5, follower_id: 4)
Follow.create!(followee_id: 6, follower_id: 4)
Follow.create!(followee_id: 2, follower_id: 4)
Follow.create!(followee_id: 3, follower_id: 4)

Follow.create!(followee_id: 6, follower_id: 5)
Follow.create!(followee_id: 1, follower_id: 5)
Follow.create!(followee_id: 2, follower_id: 5)
Follow.create!(followee_id: 3, follower_id: 5)

Follow.create!(followee_id: 5, follower_id: 6)
Follow.create!(followee_id: 2, follower_id: 6)
Follow.create!(followee_id: 3, follower_id: 6)

Follow.create!(followee_id: 5, follower_id: 7)
Follow.create!(followee_id: 2, follower_id: 7)
Follow.create!(followee_id: 3, follower_id: 7)
Follow.create!(followee_id: 8, follower_id: 7)

Follow.create!(followee_id: 7, follower_id: 8)
Follow.create!(followee_id: 2, follower_id: 8)
Follow.create!(followee_id: 3, follower_id: 8)


# user 3 - Baymax
Pin.create!(title: "Flat Fruits", description: "Kong Yunlei on Behance", image_url: "https://s-media-cache-ak0.pinimg.com/564x/41/87/8f/41878f0e7c91581affe0ab4244a0e2ec.jpg", url: "https://www.behance.net/gallery/17954697/Flat-fruits-icon", user_id: 3, board_id: 12)
Pin.create!(title: "Lee Joon Gi to Hold Fanmeet Event to watch 'Scarlet Heart: Ryeo' with Fans", description: "Baymax likes Korean dramas, and talking third person", image_url: "https://s-media-cache-ak0.pinimg.com/564x/bf/24/f4/bf24f47a0b84db05f41019d24fa253d5.jpg", url: "http://www.koogle.tv/media/news/lee-joon-gi-to-hold-fanmeet-event-to-watch-scarlet-heart-ryeo-with-fans/", user_id: 3, board_id: 10)
Pin.create!(title: "Fresh off the Boat by Eddie Huang", description: "This guy cracks me up", image_url: "https://s-media-cache-ak0.pinimg.com/564x/08/ea/a2/08eaa273e81eb36cf797689cbf5222b9.jpg", url: "http://www.goodreads.com/book/show/15792558-fresh-off-the-boat", user_id: 1, board_id: 5)
Pin.create!(title: "Emma Watson", description: "Went to college with my sister", image_url: "https://s-media-cache-ak0.pinimg.com/564x/17/b1/5f/17b15f178ca1af99ce22a166f3431928.jpg", url: "http://airows.com/sex-appeal/hottest-emma-watson-photos", user_id: 7, board_id: 28)
Pin.create!(title: "Tree Spirits", description: "Little joys in life", image_url: "https://s-media-cache-ak0.pinimg.com/564x/49/7c/ee/497cee12d0ddf3d95438591bc12eb8b7.jpg", url: "http://www.teetee.eu/en/overtime", user_id: 1, board_id: 2)
Pin.create!(title: "Stylish in Snow", description: "Men's Winter Fashion", image_url: "https://s-media-cache-ak0.pinimg.com/564x/33/fd/8e/33fd8e2622503481c870c4d09b28f190.jpg", url: "http://famousoutfits.com/collections/mens-winter-fashion/", user_id: 4, board_id: 19)
Pin.create!(title: "Kevin Durant to the Warriors!", description: "Fingers crossed", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ed/0d/94/ed0d949804a8d26c0e8648d383457c40.jpg", url: "http://hoopeduponline.com/", user_id: 4, board_id: 16)
Pin.create!(title: "The 50 Sexiest Food Photos Ever Taken", description: "It's basically porn that's totaly SFW", image_url: "https://s-media-cache-ak0.pinimg.com/564x/82/98/3f/82983f620eab10dd9a1c71123a449190.jpg", url: "http://www.delish.com/cooking/recipe-ideas/g2830/sexiest-food-photos/", user_id: 4, board_id: 17)
Pin.create!(title: "Halloween Costumes with Laurdiy", description: "Totoro thinks she is a cactus", image_url: "https://s-media-cache-ak0.pinimg.com/564x/82/c3/36/82c33661ccb087386d7694b73a303169.jpg", url: "https://www.instagram.com/p/BLW4Rw7hxY2/", user_id: 2, board_id: 8)
Pin.create!(title: "Chance the Rapper", description: "Coloring Book", image_url: "https://s-media-cache-ak0.pinimg.com/564x/5f/fa/e1/5ffae1888103cdb4452e107d0d796099.jpg", url: "https://trillartworks.tumblr.com/post/149535967946/trillartworks-chance-3", user_id: 3, board_id: 11)
Pin.create!(title: "Strange Gravity", description: "Another world", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ec/92/ee/ec92ee623b917be79603ecad0ee5ff80.jpg", url: "https://s-media-cache-ak0.pinimg.com/564x/ec/92/ee/ec92ee623b917be79603ecad0ee5ff80.jpg", user_id: 3, board_id: 13)
Pin.create!(title: "40+ Life-Changing Books to Read This Year", description: "Tim Ferriss is the man", image_url: "https://s-media-cache-ak0.pinimg.com/564x/6d/0f/c1/6d0fc152f19a3e1bbc07972a08c1bd04.jpg", url: "http://www.popsugar.com/smart-living/Books-Change-My-Life-21195577#photo-33262111", user_id: 6, board_id: 26)
Pin.create!(title: "NBA Memes", description: "Totoro broke his own sleeping record the this morning", image_url: "https://s-media-cache-ak0.pinimg.com/564x/35/c2/73/35c273e9bf39878f07689ce4f1faf5bd.jpg", url: "https://twitter.com/nbamemes/status/586634528178880513", user_id: 2, board_id: 7)
Pin.create!(title: "Taeyeon", description: "Go listen to her new single", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c0/16/5d/c0165d3b9eefb67a73f3a92206a9f03d.jpg", url: "http://fy-girls-generation.tumblr.com/post/133981629762/wish5503", user_id: 3, board_id: 10)
Pin.create!(title: "IKEA Hack: Craft Room Work Table", description: "This simple Ikea hack will make all of your craft room/home office dreams come true for about $160! ", image_url: "https://s-media-cache-ak0.pinimg.com/564x/6d/1b/89/6d1b89e3b8b44e237b8fc566a699407c.jpg", url: "http://www.landeeseelandeedo.com/2016/08/ikea-hack-craft-room-work-table.html", user_id: 3, board_id: 14)
Pin.create!(title: "Beautiful nature icons", description: "Makes me want to travel", image_url: "https://s-media-cache-ak0.pinimg.com/564x/5a/ae/a0/5aaea0d40a053310c2ca2a96f110fbd7.jpg", url: "http://huaban.com/pins/666519052/", user_id: 3, board_id: 12)
Pin.create!(title: "Ikebana | Flower Arrangement", description: "Love the use space and extensions", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ba/d8/82/bad882b8b9d21df4f8838dea2279161a.jpg", url: "http://www.akiko-usami.com/2015/01/n296-2/", user_id: 5, board_id: 21)
Pin.create!(title: "100 Brilliant Color Combinations: And How to apply them to your designs", description: "A stunning collection of color palettes inspired by food, nature, travel and everyday items.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c3/21/0a/c3210a9126966c8ca9ad6cfd478e38b0.jpg", url: "https://designschool.canva.com/blog/100-color-combinations/?utm_content=bufferc6f3c&utm_medium=social&utm_source=pinterest.com&utm_campaign=buffer", user_id: 3, board_id: 12)
Pin.create!(title: "Amazingly Revealing Macro Photos of the Human Eye", description: "Macro Photography, my fav", image_url: "https://s-media-cache-ak0.pinimg.com/564x/8a/04/9d/8a049d0a51c13e59113e7888cf779c30.jpg", url: "http://www.mymodernmet.com/profiles/blogs/suren-manvelyan-human-eyes", user_id: 3, board_id: 15)
Pin.create!(title: "12 Free Ways to Learn Design", description: "Woo! Let's do this!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/0c/30/84/0c3084b0e36b37492fca47fbe38b4451.jpg", url: "https://creativemarket.com/blog/12-free-ways-to-learn-design?utm_source=cm-popular-products-email&utm_medium=email&utm_campaign=pp-06-04-15", user_id: 3, board_id: 12)
Pin.create!(title: "Hotel", description: "\#hotel \#logo", image_url: "https://s-media-cache-ak0.pinimg.com/564x/de/f7/b6/def7b694904830d5804ee5975b69e9ed.jpg", url: "http://bestcreativity.com/blog/it/loghi-hotels-alberghi-ottimi-esempi-cui-ispirarsi/", user_id: 3, board_id: 12)
Pin.create!(title: "Fabulous Women's Fashion", description: "Chic Blazers and oversized sweaters, love", image_url: "https://s-media-cache-ak0.pinimg.com/564x/48/a6/6a/48a66a26ae50199a1307086e857c8788.jpg", url: "http://www.modwedding.com/2015/10/fabulous-fashion-made-to-inspire/", user_id: 4, board_id: 19)
Pin.create!(title: "Nora En Pure announces \"Tell My Heart Tour\" 2016 world tour dates", description: "Nora En Pure announces \"Tell My Heart Tour\" 2016 world tour dates", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e9/17/1e/e9171ebfd7c405f416e84c91d6a62e2d.jpg", url: "http://www.soundlr.com/news/nora-en-pure-announces-tell-my-heart-tour-2016-world-tour-dates/", user_id: 3, board_id: 11)
Pin.create!(title: "Black/White Hugh Jackman", description: "Hugh Jackman | Acting is something I love. It’s a great craft that I have a lot of respect for. But I don’t think it’s any greater challenge than teaching 8-year-olds or any other career. In my life, I try not to make it more important than it is and I just hope that rubs off on the people around me.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/89/3f/ae/893faeae1ebfc01356fbba890ad4b555.jpg", url: "http://crossingilandmono.tumblr.com/post/94465274803", user_id: 3, board_id: 10)
Pin.create!(title: "Golden State Warriors Set NBA Record with 73 Wins", description: "Let's do it again!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a6/62/69/a662697e9bb7ba7164e306030306ea37.jpg", url: "http://hypebeast.com/", user_id: 4, board_id: 16)
Pin.create!(title: "To Sixth Station", description: "This is gorgeous", image_url: "https://s-media-cache-ak0.pinimg.com/564x/66/80/bd/6680bd02fb8189c6290634f5348cd3dc.jpg", url: "http://c-dra.deviantart.com/art/Spirited-Away-To-Sixth-Station-513028592", user_id: 1, board_id: 3)
Pin.create!(title: "25 Cool Illustrations, Paintings & Drawings", description: "In From up North's inspiration galleries we present our latest findings from the wonderful world of design", image_url: "https://s-media-cache-ak0.pinimg.com/564x/3f/55/b8/3f55b8842621818be45ba8060cb983fe.jpg", url: "http://www.fromupnorth.com/illustration-inspiration-1080/", user_id: 3, board_id: 13)
Pin.create!(title: "Our Ends are Beginnings", description: "Art Print by ParadisiacPicture", image_url: "https://s-media-cache-ak0.pinimg.com/564x/50/76/de/5076de85a76a0dc1e54fdd8140bd0f10.jpg", url: "https://society6.com/product/our-ends-are-beginnings-limited-print_print#s6-2839648p4a1v45", user_id: 3, board_id: 13)
Pin.create!(title: "Manny Pacquiao", description: "Totoro fights like Manny Pacquiao", image_url: "https://s-media-cache-ak0.pinimg.com/564x/9c/b6/3c/9cb63c814a9e19f23563514ec5d0110e.jpg", url: "http://designrfix.com/inspiration/tim-tadder", user_id: 2, board_id: 7)
Pin.create!(title: "Ritual 02", description: "Matteo Bassini", image_url: "https://s-media-cache-ak0.pinimg.com/564x/4e/b5/6b/4eb56b3f9eb7e38b52f820b8776288f9.jpg", url: "https://www.artstation.com/artwork/G1roB", user_id: 3, board_id: 13)
Pin.create!(title: "9 Gorgeous Beauty Ideas to Steal from the Oscars", description: "Best in Oscars beauty: Anna Kendrick", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e9/5a/f5/e95af5c58ad6971446c643c79c6b3cb0.jpg", url: "http://www.teenvogue.com/gallery/oscar-awards-best-in-beauty?slide=3", user_id: 3, board_id: 10)
Pin.create!(title: "Fairy Tale Wishing Well", description: "Imagination becomes the hidden realities", image_url: "https://s-media-cache-ak0.pinimg.com/564x/18/0b/69/180b699e8897d62585ea9b609cd8aee7.jpg", url: "http://www.designcrowd.com/design/8869854", user_id: 3, board_id: 13)
Pin.create!(title: "Tokimonsta", description: "Put it Down (feat. Anderson .Paak & KRNE), go listen", image_url: "https://s-media-cache-ak0.pinimg.com/564x/90/0a/6b/900a6b6aaefa0fd5635771e967854ece.jpg", url: "https://twitter.com/tokimonsta?lang=en", user_id: 3, board_id: 11)
Pin.create!(title: "City in the Clouds", description: "Zinchao Cai Art", image_url: "https://s-media-cache-ak0.pinimg.com/564x/d3/ff/05/d3ff05928d2f71104726f4516fb749d2.jpg", url: "http://theartofanimation.tumblr.com/post/119592098768/zhichao-cai", user_id: 3, board_id: 13)
Pin.create!(title: "Lyanna Mormont for President", description: "Third Party Wins! Political upset", image_url: "https://s-media-cache-ak0.pinimg.com/564x/64/8a/97/648a97fa1ae6f39424b1f5e1c816c532.jpg", url: "http://www.cbsnews.com/news/presidential-election-2016-results-live-updates/", user_id: 8, board_id: 32)
Pin.create!(title: "Tea House Logo", description: "What a gorgeous simplistic design", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e5/fc/7e/e5fc7ed1417ba8acb1b44083402ec33c.jpg", url: "https://www.instagram.com/p/BCVEUCCmGM2/", user_id: 3, board_id: 12)
Pin.create!(title: "Doggies who Cross Their Paws", description: "I want a dog for Christmas", image_url: "https://s-media-cache-ak0.pinimg.com/564x/63/bb/61/63bb616a33fc209cd3a48795c981f46d.jpg", url: "http://stories.barkpost.com/25-dogs-casual/", user_id: 7, board_id: 27)
Pin.create!(title: "Attack on Titan", description: "Erin Jaeger and Annie Leonhardt", image_url: "https://s-media-cache-ak0.pinimg.com/564x/7e/2c/28/7e2c28112ee05b4bb98acb698616a280.jpg", url: "http://www.zerochan.net/1525812", user_id: 8, board_id: 31)
Pin.create!(title: "Team Leaders Pledge", description: "Dat water bottle flip was Lit AF", image_url: "https://s-media-cache-ak0.pinimg.com/564x/21/8b/f4/218bf4df60af2af7eceeaeabbbddbcf5.jpg", url: "http://9gag.com/gag/aGDdPxX", user_id: 8, board_id: 31)
Pin.create!(title: "Kobe Bryant the Black Mamba", description: "Missing the Mamba", image_url: "https://s-media-cache-ak0.pinimg.com/564x/b9/85/3e/b9853e2ce287f3b2def5d7373a9a9ee6.jpg", url: "https://www.instagram.com/p/BD7BQiJk_Gx/", user_id: 4, board_id: 16)
Pin.create!(title: "Alex Wassabi", description: "If you're not smiling you're doing it wrong", image_url: "https://s-media-cache-ak0.pinimg.com/564x/f9/9a/d6/f99ad62711f0f69be98a9434a439ea60.jpg", url: "https://www.instagram.com/p/BKWvgSmB1g-/", user_id: 2, board_id: 8)
Pin.create!(title: "Books are the key to another world...", description: "Read", image_url: "https://s-media-cache-ak0.pinimg.com/564x/83/6a/1b/836a1b622dc2f826dc3a151c16508af0.jpg", url: "https://s-media-cache-ak0.pinimg.com/originals/83/6a/1b/836a1b622dc2f826dc3a151c16508af0.jpg", user_id: 3, board_id: 13)
Pin.create!(title: "10 Places You Must Visit In Thailand", description: "I won't retire but I could use a vacation", image_url: "https://s-media-cache-ak0.pinimg.com/564x/19/61/e5/1961e592eaa836b54896ace5c72f4e0e.jpg", url: "https://theculturetrip.com/asia/thailand/articles/10-places-you-must-visit-in-thailand/", user_id: 1, board_id: 6)
Pin.create!(title: "15 Clever Small Space Tips From Design Bloggers", description: "The organization experts at HGTV.com talk to design bloggers for smart and creative ideas about creating storage in a small space", image_url: "https://s-media-cache-ak0.pinimg.com/564x/05/41/e0/0541e063665c83e35299762ad5da209f.jpg", url: "http://www.hgtv.com/design/decorating/design-101/small-space-tips-from-design-bloggers-pictures", user_id: 3, board_id: 14)
Pin.create!(title: "Ghilbi Hogwart Houses", description: "She would be proud of this crossover", image_url: "https://s-media-cache-ak0.pinimg.com/564x/32/c8/3e/32c83ee799d1ad7726e611938e806f36.jpg", url: "http://shirtoid.com/142306/ghibliwarts/", user_id: 1, board_id: 2)
Pin.create!(title: "No Face", description: "love the simple colors", image_url: "https://s-media-cache-ak0.pinimg.com/564x/80/4a/0c/804a0ce659e0e08f548ffedc7b8dbc52.jpg", url: "http://www.redbubble.com/people/syntetyc/works/11488636", user_id: 1, board_id: 3)
Pin.create!(title: "Mononoke Hime", description: "The tones are on point(as the young ones say)", image_url: "https://s-media-cache-ak0.pinimg.com/564x/91/11/ec/9111ec2480973fd75ed52bf5c698000c.jpg", url: "https://twitter.com/miyazaki_ru/status/783337707154108416", user_id: 1, board_id: 3)
Pin.create!(title: "Metropolis 225", description: "Toshio Hatanaka aka Ataboh", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c0/b0/7d/c0b07dbcae6658d85ebbe7fe4d8bfa41.jpg", url: "http://www.stripyamanita.com/metropolis225-ataboh/", user_id: 3, board_id: 13)
Pin.create!(title: "Respect Honesty Trust Loyalty", description: "Trust is gained", image_url: "https://s-media-cache-ak0.pinimg.com/564x/af/4c/66/af4c664017e4765514460ea039f8dea8.jpg", url: "http://modernparentsmessykids.com/category/happy-family-habits/", user_id: 1, board_id: 4)
Pin.create!(title: "Scenic Bliss", description: "The Art of Animation", image_url: "https://s-media-cache-ak0.pinimg.com/564x/95/38/08/9538082cb7b9f0799cb97e599363c755.jpg", url: "http://theartofanimation.tumblr.com/post/135771690544/ghost-i-httpghostillustrationscom", user_id: 3, board_id: 13)
Pin.create!(title: "For When It Gets Real", description: "Sh*ts about to go down", image_url: "https://s-media-cache-ak0.pinimg.com/564x/00/6f/3e/006f3ea875913b4384b886d73114f8f5.jpg", url: "http://www.pmslweb.com/the-blog/mischievous-hump-day-when-regular-humor-does-not-cover-it/", user_id: 7, board_id: 29)
Pin.create!(title: "15 Important Life lessons Taught In Miyazaki Films That People Often Forget", description: "Watch them over and over", image_url: "https://s-media-cache-ak0.pinimg.com/564x/87/66/2c/87662c72ceb4927690ed78396f781c3f.jpg", url: "http://www.lifehack.org/342682/15-important-life-lessons-taught-miyazaki-films-that-people-often-forget-2", user_id: 1, board_id: 4)
Pin.create!(title: "Sophie Hatter", description: "Blaze Califer, blaze on", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a4/cc/49/a4cc492eacfeeaa3984714459a5f0e38.jpg", url: "http://muchpics.com/life-lessons-from-studio-ghibli-films-howls-moving-castle/", user_id: 1, board_id: 4)
Pin.create!(title: "The Fierce Imagination of Haruki Murakami", description: "Love his books! A true global imaginative force.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ef/9f/69/ef9f698aeee3a8bf5efa46f92d20f1e6.jpg", url: "http://www.nytimes.com/2011/10/23/magazine/the-fierce-imagination-of-haruki-murakami.html?_r=1&pagewanted=all", user_id: 1, board_id: 5)
Pin.create!(title: "100 Dynamic Winter Fashion Ideas For Men", description: "Stylish wife stylish life", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a1/74/3c/a1743cf89f59b91f25b843989fc50069.jpg", url: "http://www.stylishwife.com/2015/01/dynamic-winter-fashion-ideas-for-men.html/2", user_id: 4, board_id: 19)
Pin.create!(title: "The Shawshank Redemption", description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e6/ed/90/e6ed90ecca75e7ff3626a9d1c87d3538.jpg", url: "http://www.imdb.com/title/tt0111161/?ref_=fn_al_tt_1", user_id: 5, board_id: 20)
Pin.create!(title: "Miyazaki Art Nouveau Style", description: "High five, 100% approve", image_url: "https://s-media-cache-ak0.pinimg.com/564x/bc/32/af/bc32af2dc7fde48bd2bf29ab58c781b9.jpg", url: "http://comicsalliance.com/miyazaki-art-nouveau-fan-art-tribute-alphonse-mucha-studio-ghibli/", user_id: 1, board_id: 2)
Pin.create!(title: "The Life-changing Magic of Tidying Up", description: "Marie Kondo, she is a talented individual", image_url: "https://s-media-cache-ak0.pinimg.com/564x/4b/ab/23/4bab23f9b215bc2e199d4ca7cd0efd67.jpg", url: "http://hubpages.com/living/clean-and-clutter-free", user_id: 1, board_id: 5)
Pin.create!(title: "Everything you need to know about trips to see the Northern Lights", description: "The lights are out of this world", image_url: "https://s-media-cache-ak0.pinimg.com/564x/73/4d/52/734d5239a66dcf64cb94279b81d6234c.jpg", url: "http://www.telegraph.co.uk/travel/activity-and-adventure/The-northern-lights-Trip-of-a-Lifetime/", user_id: 1, board_id: 6)
Pin.create!(title: "New 7 Wonders of the World", description: "2 down and counting", image_url: "https://s-media-cache-ak0.pinimg.com/564x/38/51/46/385146865cdbfad019893c63467bc084.jpg", url: "http://amongraf.ro/new-seven-wonders-of-the-world-complete-list-of-the-7-wonders/5/", user_id: 1, board_id: 6)
Pin.create!(title: "Visual Graphic \#moon", description: "Sooooo clean!! Gah beauty in simplicity", image_url: "http://a1.dspncdn.com/media/692x/dd/f7/73/ddf7734568b382d6159e5f2b1bcbed7d.jpg", url: "http://designspiration.net/image/1738862619345/", user_id: 3, board_id: 12)
Pin.create!(title: "From The Mag: How Stephen Curry became the NBA's top point guard", description: "Warriors!!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/8f/d2/af/8fd2af917a51391f226a976b2ba8e0a4.jpg", url: "http://www.espn.com/espn/feature/story/_/id/12728744/how-golden-state-warriors-stephen-curry-became-nba-best-point-guard?ex_cid=espnpt", user_id: 4, board_id: 16)
Pin.create!(title: "Sword Art Online", description: "Kirito and Asuna", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a3/b1/29/a3b12987ea9bffef87f299b9e2fe5cee.jpg", url: "http://www.zerochan.net/1752229", user_id: 8, board_id: 31)
Pin.create!(title: "Remembering Robin Williams", description: "True talent", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e8/28/1f/e8281fc3f36d496f9400215f2cff3ea3.jpg", url: "http://www.vogue.com/964995/remembering-robin-williams/#1", user_id: 3, board_id: 10)
Pin.create!(title: "Lamb loin, Parmesan risotto and pan juices", description: "1 hour to cook, serves 4", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e0/09/85/e009853b652598818457dcfbcf924e55.jpg", url: "http://www.greatbritishchefs.com/recipes/lamb-loin-recipe-parmesan-risotto", user_id: 5, board_id: 22)
Pin.create!(title: "10 Books To Read If You Want To Start 2016 Right", description: "Whoops guess I'll read them for 2017", image_url: "https://s-media-cache-ak0.pinimg.com/564x/f5/ca/8c/f5ca8c73eb448509d4271cd15ed74b1d.jpg", url: "http://www.mindbodygreen.com/0-22693/10-books-to-read-if-you-want-to-start-2016-right.html", user_id: 6, board_id: 26)
Pin.create!(title: "Komorebi", description: "Totoro likes komorebi", image_url: "https://s-media-cache-ak0.pinimg.com/564x/8a/a6/79/8aa679d198f92b41df00d22bd48fc5d7.jpg", url: "https://www.youtube.com/channel/UCutXfzLC5wrV3SInT_tdY0w", user_id: 2, board_id: 8)
Pin.create!(title: "How To Cook Perfect Eggs", description: "Totoro eats eggs every morning", image_url: "https://s-media-cache-ak0.pinimg.com/564x/04/6e/57/046e5765c5736567f681db6119d358dc.jpg", url: "https://www.buzzfeed.com/alisonroman/how-to-cook-eggs#.lnX7ePGkR", user_id: 2, board_id: 9)
Pin.create!(title: "Popsicle Stick Playing Cards", description: "Engrave them with fire", image_url: "https://s-media-cache-ak0.pinimg.com/564x/d3/ab/69/d3ab69b189117983a6913e4713cc78ef.jpg", url: "http://www.instructables.com/id/Popsicle-Stick-Playing-Cards/", user_id: 6, board_id: 24)
Pin.create!(title: "Home", description: "Wow this person might be better than me", image_url: "https://s-media-cache-ak0.pinimg.com/564x/47/8f/ce/478fcefaad3e0f5b7cd72c55d35114a5.jpg", url: "http://www.duitang.com/blog/?id=93792539", user_id: 1, board_id: 1)
Pin.create!(title: "Morimoto Chef Robby Cook Tells Us the Right Way to Eat Sushi and Sashimi", description: "Iron Chef Morimoto", image_url: "https://s-media-cache-ak0.pinimg.com/564x/48/4a/b3/484ab35aa9f81e1ce3f76b28b95a0e42.jpg", url: "http://www.instyle.com/news/right-way-eat-sushi-according-morimoto-chef?crlt.pid=camp.GD5y840KVG27", user_id: 4, board_id: 17)
Pin.create!(title: "101 Epic IKEA Hacks for Your Home", description: "I've scoured the web for the best IKEA hacks for the home and for families---check them out in the slideshow above. ", image_url: "https://s-media-cache-ak0.pinimg.com/564x/cd/78/31/cd7831d1ece992031ba854298a415f77.jpg", url: "http://www.momtastic.com/diy/518049-ikea-hacks/?slideshow=1275#/slide/71", user_id: 3, board_id: 14)
Pin.create!(title: "32 Stunning Patio Outdoor Lighting Ideas", description: "Looking to for outdoor lighting, outdoor lights, patio lights & garden lights? Access our photo gallery from top outdoor designers and get", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a2/4d/7c/a24d7c1b210b67d86b0f6f57ba742962.jpg", url: "http://www.homedesignetc.com/stunning-patio-lighting/", user_id: 3, board_id: 14)
Pin.create!(title: "Wongfu Productions", description: "Totoro likes to watch wongfu productions", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ec/a3/22/eca32295a99e0076d39207906fcbd65c.jpg", url: "http://wongfuproductions.com/", user_id: 2, board_id: 8)
Pin.create!(title: "Ad Campaign Feat. Park Shin Hye", description: "Couch Kimchi", image_url: "https://s-media-cache-ak0.pinimg.com/564x/2e/0c/8f/2e0c8f9d671aad64a2d0dd78bd4c8a9e.jpg", url: "http://couch-kimchi.com/2015/09/11/viki-fw-2015-ad-campaign-feat-park-shin-hye/", user_id: 3, board_id: 10)
Pin.create!(title: "Halloween Special", description: "Anakama's \"Abraca\" video game", image_url: "https://s-media-cache-ak0.pinimg.com/564x/db/bb/a5/dbbba5b859818b205af5cca43438855b.jpg", url: "http://catfishdeluxe.tumblr.com/post/132529018897/more-concept-art-for-ankamas-abraca-videogame", user_id: 3, board_id: 13)
Pin.create!(title: "Self Taught Photography Takes Unbelievable Wedding Photos", description: "You're hired, I just need to find the Bae to my max.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/20/7a/15/207a1538554f53e0422bff213502bd1b.jpg", url: "http://www.boredpanda.com/eye-reflection-wedding-photography-eyescapes-peter-adams/?utm_source=iosapp&utm_medium=social&utm_campaign=iosapp", user_id: 3, board_id: 15)
Pin.create!(title: "7 Surreal Landscapes", description: "Time to go to Japan", image_url: "https://s-media-cache-ak0.pinimg.com/564x/1b/b2/96/1bb296e42a13deb9156d910774559b7d.jpg", url: "http://www.bt-images.net/surreal-landscapes/", user_id: 3, board_id: 15)
Pin.create!(title: "18 Celebrities Morphed Into Stunningly Perfect People", description: "Buzzfeed article", image_url: "https://s-media-cache-ak0.pinimg.com/564x/f6/ed/9e/f6ed9e479ee7eb73ff11639bfe4d6d60.jpg", url: "https://www.buzzfeed.com/mrloganrhoades/18-celebrity-morph-combinations-that-are-stunningly-perfect?sub=3945644_6578454&utm_term=.sinQL3e2WN#.jgzl2BmN8X", user_id: 3, board_id: 10)
Pin.create!(title: "Hong Jong Kyun", description: "Eastern Trends Magazine April", image_url: "https://s-media-cache-ak0.pinimg.com/564x/02/98/e5/0298e50bef8790e48fe19cac57634763.jpg", url: "http://kmagazinelovers.tumblr.com/post/142204409601/hong-jong-hyun-eastern-trends-magazine-april", user_id: 3, board_id: 10)
Pin.create!(title: "22 Beautiful National Parks in the World", description: "Nature is bae", image_url: "https://s-media-cache-ak0.pinimg.com/564x/16/43/ff/1643ff87e9ebfd462dee25f741c696dc.jpg", url: "http://www.holidayfeed.com/22-beautiful-national-parks-in-the-world/", user_id: 4, board_id: 18)
Pin.create!(title: "Anderson .Paak & The Free Nationals", description: "NPR's Tiny Desk Concert", image_url: "https://s-media-cache-ak0.pinimg.com/564x/dd/e4/61/dde461a44632775d3b8843f4bd7fbbaf.jpg", url: "http://www.okayplayer.com/news/anderson-paak-the-free-nationals-storm-nprs-tiny-desk-concert.html", user_id: 3, board_id: 11)
Pin.create!(title: "Salmon Don", description: "Sashimi all day everyday", image_url: "https://s-media-cache-ak0.pinimg.com/564x/79/4e/ea/794eea9407fa5226da5a2e5071dd8dbb.jpg", url: "https://www.nipponterest.com/", user_id: 4, board_id: 17)
Pin.create!(title: "American Music Awards 2015 Red Carpet", description: "Zendaya, Selena Gomez, Gigi Hadid and more at the American Music Awards on Sunday night in Los Angeles.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ee/2d/09/ee2d09c8c3bef4d048ba9e0193b567fb.jpg", url: "http://www.nytimes.com/slideshow/2015/11/22/fashion/american-music-awards-2015-red-carpet/s/AMA-2015-red-carpet-slide-IZMS.html?smid=pi-nytimes&smtyp=cur&crlt.pid=camp.I6b2IdF99OTj", user_id: 3, board_id: 10)
Pin.create!(title: "Wariors 2016-2017", description: "Making it Rain", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a0/d4/6a/a0d46ae8a943c749686369a1eabe7adf.jpg", url: "http://splash-brothers.tumblr.com/post/150980343419/steph-and-kd-2016-warriors-media-day", user_id: 4, board_id: 16)
Pin.create!(title: "Murakami by Made In Heights", description: "Rewind-like Japanese dialogue intro", image_url: "https://s-media-cache-ak0.pinimg.com/564x/10/1f/cd/101fcd82ca4329d5a9a852d1b4748c6b.jpg", url: "http://www.throughmyheadphones.com/made-heights-murakami/", user_id: 3, board_id: 11)
Pin.create!(title: "Andrew taggart of The Chainsmokers", description: "2016 Coachella Photos Day 3", image_url: "https://s-media-cache-ak0.pinimg.com/564x/de/b8/fa/deb8faff7764ab1519c965425861e47f.jpg", url: "http://www.billboard.com/photos/7334050/2016-coachella-photos-performances-backstage-parties-more/56", user_id: 3, board_id: 11)
Pin.create!(title: "Rubert Grint", description: "He owns an ice cream truck", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a3/08/18/a30818120072e759cc17a27d8c57ca2a.jpg", url: "http://diply.com/creative-unusual/article/rupert-grint-spent-fortune", user_id: 7, board_id: 28)
Pin.create!(title: "Menswear Street Style in London", description: "I want that sweater", image_url: "https://s-media-cache-ak0.pinimg.com/564x/34/7b/32/347b3214800619a2ef54eb944dd1966b.jpg", url: "https://www.instagram.com/p/BH4kNX3gYhN/", user_id: 4, board_id: 19)

Pin.create!(title: "Amazing Campgrounds In America", description: "Going for the chill vibes", image_url: "https://s-media-cache-ak0.pinimg.com/564x/cc/3d/23/cc3d23739000c7684f7dd4964934d311.jpg", url: "https://www.buzzfeed.com/anniedaly/lets-go-camping?sub=4244619_8653270&utm_term=.swvPnYB5VX&fb_ref=.rtm7Q5gGJM", user_id: 6, board_id: 24)
Pin.create!(title: "What Superpower Would You Have In A Parallel Universe?", description: "I can already fly with Hiro's upgrades", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e3/33/56/e33356121c4666f982b926946e91a5a0.jpg", url: "http://www.playbuzz.com/limaop10/what-superpower-would-you-have-in-a-parallel-universe", user_id: 3, board_id: 15)
Pin.create!(title: "Jiulong Waterfall", description: "Wah, this is Hong Kong?", image_url: "https://s-media-cache-ak0.pinimg.com/564x/6b/69/32/6b6932446788cb51c207c5b41f344d64.jpg", url: "http://www.fulldose.net/jiulong-waterfall-hong-kong/", user_id: 5, board_id: 23)
Pin.create!(title: "20 Beautiful Bedroom Color Schemes To Choose From", description: "20 Beautiful Bedroom Color Schemes To Choose From", image_url: "https://s-media-cache-ak0.pinimg.com/564x/86/ed/88/86ed88033076456c09731da318370430.jpg", url: "http://www.homedesignetc.com/bathrooms/", user_id: 3, board_id: 14)
Pin.create!(title: "Anderson .Paak", description: "Killed it at Coachella", image_url: "https://s-media-cache-ak0.pinimg.com/564x/14/56/20/1456204f1f1edcf2dba4c54560fdf09d.jpg", url: "http://tempsreel.nouvelobs.com/culture/20160129.OBS3640/malibu-d-anderson-paak-un-album-irresistiblement-rond-cool-et-funky.html", user_id: 3, board_id: 11)
Pin.create!(title: "18 Fire Pit Ideas For Your Backyard", description: "Outdoor crafts and builds", image_url: "https://s-media-cache-ak0.pinimg.com/564x/2a/72/8d/2a728d4deff7d92fad9357d2795631e1.jpg", url: "http://bestofdiyideas.com/18-fire-pit-ideas-for-your-backyard/fire-pit-ideas-for-back-yard-seating-decoration/", user_id: 3, board_id: 14)
Pin.create!(title: "Firewatch", description: "Concept Art by Olly Moss", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a6/b0/c4/a6b0c4ca9fddd9cdc3690d6ccf3f252c.jpg", url: "http://blog.camposanto.com/", user_id: 3, board_id: 13)
Pin.create!(title: "30 Luxury Shower Designs Demonstrating Latest Trends in Modern Bathrooms", description: "Must have rain shower!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/16/b6/2e/16b62e7b24a85c46a566f721d045c9ed.jpg", url: "http://www.lushome.com/30-luxury-shower-designs-demonstrating-latest-trends-modern-bathrooms/147025", user_id: 3, board_id: 14)
Pin.create!(title: "11 Super Simple Ideas for What to Post on Instagram", description: "Keep the hearts and comments rolling", image_url: "https://s-media-cache-ak0.pinimg.com/564x/43/c7/ba/43c7ba522a27ecc571d0be121213fca7.jpg", url: "http://www.postplanner.com/ideas-for-what-to-post-on-instagram/", user_id: 3, board_id: 15)

Pin.create!(title: "Animals That Are Guaranteed To Make You Smile", description: "Poor doggie stuck in the mail box", image_url: "https://s-media-cache-ak0.pinimg.com/564x/55/f9/9c/55f99c0fc7842a5a59b9d6a25926c5f3.jpg", url: "https://www.buzzfeed.com/adamdavis/animals-are-the-best?utm_term=.slx10gjZV", user_id: 7, board_id: 27)
Pin.create!(title: "These Mozzarella Stick Onion Rings Should Run For President", description: "NOM NOMS, GET IN MY BELLY", image_url: "https://s-media-cache-ak0.pinimg.com/564x/b4/23/c1/b423c1d1cebc5bd6e9ee1571252f64be.jpg", url: "https://www.buzzfeed.com/melissaharrison/mozzarella-stick-onion-rings?utm_term=.olDQzGZaa#.nogWElAdd", user_id: 2, board_id: 9)

Pin.create!(title: "34 Pictures Of Circular Food That Will Give You Intense Cravings", description: "Thank you, geometry", image_url: "https://s-media-cache-ak0.pinimg.com/564x/3f/46/9e/3f469ec4a1ec5349dd0bdfb38c587dff.jpg", url: "https://www.buzzfeed.com/jamiejones/spherical-food-that-make-the-world-a-little-brighter?utm_term=.gew7p7D9Jq#.cygVXV82jr", user_id: 4, board_id: 17)

Pin.create!(title: "10 Natural Wonders in Iceland That Will Take Your Breath Away", description: "Backpack Iceland!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c3/7e/3d/c37e3d299b8bab7b44a5c9d823d5156a.jpg", url: "http://www.popsugar.com/smart-living/Best-Places-Iceland-41606229?crlt.pid=camp.J93HhwUNgNjg#photo-41606229", user_id: 4, board_id: 18)
Pin.create!(title: "9 Real Life Fairytale Villages in Europe", description: "Fairytale Europe", image_url: "https://s-media-cache-ak0.pinimg.com/564x/bb/2f/5e/bb2f5ef117fcdd11bd59b958e9a1c483.jpg", url: "http://mamabee.com/9-real-life-fairytale-villages-in-europe/", user_id: 4, board_id: 18)
Pin.create!(title: "18 Most Motivaional Books Ever Written", description: "We asked our readers to name the motivational books that have inspired them. These are the 18 reads they loved the best.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e6/05/ea/e605eab2cbd2956c99375b31e0dba6b2.jpg", url: "http://www.inc.com/geoffrey-james/18-most-motivational-books-ever-written.html?cid=sf01001&sr_share=twitter", user_id: 6, board_id: 26)
Pin.create!(title: "One perfect day: 24 hours in New York City", description: "New York New York", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c1/b3/6f/c1b36f80d4bd7a5ce5bc6b85cc31c0fc.jpg", url: "https://www.lonelyplanet.com/usa/new-york-city/travel-tips-and-articles/76747", user_id: 4, board_id: 18)
Pin.create!(title: "Favorite Sylvester Stallone Movies", description: "Rocky", image_url: "https://s-media-cache-ak0.pinimg.com/564x/8a/34/96/8a3496d9783a10cedad59025d6f8a2d0.jpg", url: "http://hubpages.com/entertainment/My-Favorite-Slyvester-Stallone-movies", user_id: 5, board_id: 20)

Pin.create!(title: "Hong Kong Rooftopping", description: "Photographers doing whatever it takes to get the pic", image_url: "https://s-media-cache-ak0.pinimg.com/564x/4a/79/21/4a7921b7888d2ed627174df1cc1791c7.jpg", url: "https://iso.500px.com/21-photographers-doing-whatever-it-takes-to-get-the-perfect-shot/?utm_source=500px&utm_medium=social&utm_campaign=mar7_1PM_21-photographers-doing-whatever-it-takes-to-get-the-perfect-shot", user_id: 5, board_id: 23)

Pin.create!(title: "50 Must See Alternative Movie Posters By Designers", description: "It has almost become a trend for artists and designers to reimagine movie posters to show off their own take on a design.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/fd/c6/41/fdc64176f6d81c4276b5eb1f5e7e3e0d.jpg", url: "http://blog.spoongraphics.co.uk/articles/50-must-see-alternative-movie-posters-by-designers", user_id: 5, board_id: 20)


Pin.create!(title: "Mint Chocolate Chip Greek Yogurt Popsicles", description: "Deliciously creamy mint popsicles studded with chocolate chips and dipped in a milk chocolate magic shell. Perfect for hot summer days!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a9/fc/35/a9fc35a68b42b1d9be71c357b76922fd.jpg", url: "http://marshasbakingaddiction.com/mint-chocolate-chip-greek-yoghurt-popsicles/", user_id: 5, board_id: 22)
Pin.create!(title: "Modern Japanese Inspired Styled Shoot", description: "Japanese style Flower Arrangement", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ac/3a/65/ac3a65f1c3b0821b3ebca15470c5b411.jpg", url: "http://www.utterlyengaged.com/modern-japanese-inspired-styled-shoot/", user_id: 5, board_id: 21)
Pin.create!(title: "The 33 Fluffiest Animals On The Planet", description: "Squeal...Babies", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c0/14/23/c014230dec32c2eeb133b7b8da072317.jpg", url: "https://www.buzzfeed.com/chelseamarshall/the-33-fluffiest-animals-on-the-planet", user_id: 7, board_id: 27)
Pin.create!(title: "Just Don't Do It", description: "Lazzzzzz....", image_url: "https://s-media-cache-ak0.pinimg.com/564x/7e/b9/0c/7eb90cd44014ceca066b2b95d4aa9c97.jpg", url: "http://www.theshirtlist.com/just-dont-do-it-white-t-shirt/", user_id: 6, board_id: 25)
Pin.create!(title: "King of the North", description: "Richard Madden, Natalie Dormer and Kit Harington", image_url: "https://s-media-cache-ak0.pinimg.com/564x/41/be/6b/41be6b806d2ad4ec8105ec34b1eaff64.jpg", url: "http://casaharington.tumblr.com/post/140410697522/richard-madden-natalie-dormer-and-kit-harington", user_id: 8, board_id: 32)
Pin.create!(title: "Repurpose Old Fish Bowls – Creative Home Décor Idea", description: "Fishbowls without the fishies", image_url: "https://s-media-cache-ak0.pinimg.com/564x/09/4c/02/094c02a7101720063ac2407ba4502296.jpg", url: "http://decozilla.com/2014/08/repurpose-old-fish-bowls-creative-home-decor-idea/", user_id: 5, board_id: 21)
Pin.create!(title: "Embrace the Beauty of Nature, with Ikebana", description: "Not everyone knows what an “Ikebana” means but in very simple terms – it’s called, flower arrangement", image_url: "https://s-media-cache-ak0.pinimg.com/564x/47/0c/48/470c482ac218f10f34d564af10dda2e7.jpg", url: "http://www.aishakristine.com/inspiration/embrace-the-beauty-of-nature-with-ikebana.html", user_id: 5, board_id: 21)

Pin.create!(title: "Cajun Chicken Pasta", description: "Chili’s copycat recipe made at home with an amazingly creamy melt-in-your-mouth alfredo sauce. And you know it tastes 10000x better!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ae/29/c7/ae29c7ff0cbcf213a7b9e359299af367.jpg", url: "hhttp://damndelicious.net/2015/11/30/cajun-chicken-pasta/", user_id: 5, board_id: 22)
Pin.create!(title: "Game of Thrones Season 7", description: "Can't wait for the new season", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c4/3e/78/c43e7856a23c5fe0d930c3be4faf81f7.jpg", url: "http://www.smh.com.au/entertainment/tv-and-radio/drama/game-of-thrones-season-7-spoilers-leaked-but-does-the-insane-plot-stack-up-20161108-gsl033.html", user_id: 8, board_id: 32)
Pin.create!(title: "25 Reasons to Watch GoT", description: "Comment for the 26th reason", image_url: "https://s-media-cache-ak0.pinimg.com/564x/0e/67/b7/0e67b78c2fa199467e4335230fce2492.jpg", url: "http://newspapermag.com/25-reasons-to-watch-game-of-thrones/", user_id: 8, board_id: 32)
Pin.create!(title: "Cute Animals Winking", description: ">.o", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e9/a6/9a/e9a69aef507e09290819d34120badeac.jpg", url: "https://www.buzzfeed.com/toddvanluling/35-cats-and-other-cute-animals-winking", user_id: 7, board_id: 27)
Pin.create!(title: "Howl's Moving Castle", description: "Love the art interpretation", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c2/cc/64/c2cc6425ef56af593dacfbaa4274bb60.jpg", url: "https://s-media-cache-ak0.pinimg.com/564x/c2/cc/64/c2cc6425ef56af593dacfbaa4274bb60.jpg", user_id: 1, board_id: 1)
Pin.create!(title: "21 Amazingly Profound Quotes From Hayao Miyazaki", description: "Haha, quotes by me.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/6f/c9/6a/6fc96a46b59df470a4bec76bfc399f13.jpg", url: "https://www.buzzfeed.com/juliapugachevsky/amazingly-profound-quotes-from-hayao-miyazaki", user_id: 1, board_id: 1)
Pin.create!(title: "A Delightful Portrait of Hayao Miyazaki Made Out of Ghibli Characters", description: "Me.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/fa/87/ba/fa87ba595a6fbae45042930729eae037.jpg", url: "http://io9.gizmodo.com/a-delightful-portrait-of-hayao-miyazaki-made-out-of-ghi-1516859011", user_id: 1, board_id: 1)

Pin.create!(title: "Best Celebrity Selfies", description: "So many kissy faces", image_url: "https://s-media-cache-ak0.pinimg.com/564x/fe/58/49/fe58499efc6395839ff07634952c6377.jpg", url: "http://www.cosmopolitan.com/entertainment/celebs/news/g4059/best-celebrity-selfies/?slide=22", user_id: 8, board_id: 30)
Pin.create!(title: "22 Movie Titles, Re-Worded for Simplicity", description: "For whatever reason, be it artistic license, necessity, or just plain wackiness, a lot of films have ridiculously long names. We asked you…", image_url: "https://s-media-cache-ak0.pinimg.com/564x/2d/2c/f7/2d2cf7a00135d7d26ac601a4d723f084.jpg", url: "http://www.cracked.com/photoplasty_775_22-movie-titles-re-worded-simplicity/", user_id: 5, board_id: 20)
Pin.create!(title: "Interview Hacks", description: "Yup", image_url: "https://s-media-cache-ak0.pinimg.com/564x/9a/39/88/9a398883fc36574bc0ee515c1ffc42a2.jpg", url: "https://www.linkedin.com/", user_id: 7, board_id: 29)
Pin.create!(title: "Funny Pictures of the Day", description: "Look at all 33 of em'", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c7/cb/8b/c7cb8b615a0c291d1556418fe2355b03.jpg", url: "http://www.dumpaday.com/funny-pictures/funny-pictures-of-the-day-33-pics-16/", user_id: 7, board_id: 29)

Pin.create!(title: "Uzumaki Naruto", description: "Uzumaki Family", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e8/a4/3b/e8a43b974e67657eff35af008ebf53ec.jpg", url: "http://www.zerochan.net/full/1929918", user_id: 8, board_id: 31)
Pin.create!(title: "Our 10 Favorite Jennifer Lawrence Photo Shoots", description: "Rocking the hairdo", image_url: "https://s-media-cache-ak0.pinimg.com/564x/f6/63/19/f66319bb47ad203d17b53b96d5e66385.jpg", url: "http://www.hercampus.com/style/our-10-favorite-jennifer-lawrence-photo-shoots", user_id: 8, board_id: 30)
Pin.create!(title: "How well do you know Taylor Swift", description: "I am a swifty", image_url: "https://s-media-cache-ak0.pinimg.com/564x/16/c0/91/16c091f1970323d39f18d5cdd2b44eea.jpg", url: "http://www.playbuzz.com/ftrzoq10/how-well-do-you-know-taylor-swift?utm_source=pinterest.com&utm_medium=smff&utm_campaign=how-well-do-you-know-taylor-swift", user_id: 8, board_id: 30)
Pin.create!(title: "Temple Street", description: "Shopping shopping!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/09/1f/fb/091ffb3f51c8293a71c699bcdd21fdb1.jpg", url: "http://www.pbase.com/image/27222750", user_id: 5, board_id: 23)


Pin.create!(title: "Totoro can be like Michael Jordan", description: "Basketball I can play", image_url: "https://s-media-cache-ak0.pinimg.com/564x/82/43/c3/8243c3c1091b57e6ae24a5ba11f95ac5.jpg", url: "http://www.bt-images.net/top-20-inspiration-motivational-quotes/", user_id: 2, board_id: 7)
Pin.create!(title: "DIY floating corner shelves", description: "Way to utilize space", image_url: "https://s-media-cache-ak0.pinimg.com/564x/5a/7a/f8/5a7af83e559658ca349cd6bd615ad654.jpg", url: "http://mrandmrsinterior.com/interior-design/diy-floating-corner-shelves", user_id: 3, board_id: 14)
Pin.create!(title: "Studio Ghilbi illustrations by Tyler Stout", description: "I approve", image_url: "https://s-media-cache-ak0.pinimg.com/564x/46/10/93/461093b4b503869c87053b366129aaa6.jpg", url: "https://s-media-cache-ak0.pinimg.com/564x/46/10/93/461093b4b503869c87053b366129aaa6.jpg", user_id: 1, board_id: 1)
Pin.create!(title: "25 Delightfully Cozy Gifts For Anyone Who Hates Leaving The House", description: "Totoro likes Netflix", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c0/f0/ad/c0f0adb2ce2525c2035c5683b47a034d.jpg", url: "https://www.buzzfeed.com/sallytamarkin/indoorsy-af?crlt.pid=camp.FYzgPa2eM28q#.peMqzGnQAW", user_id: 2, board_id: 9)
Pin.create!(title: "Daniel Radcliffe", description: "Here's what Daniel would want to take to a desert island", image_url: "https://s-media-cache-ak0.pinimg.com/564x/1d/53/5d/1d535d38f04cc07c99631f25a2269cf0.jpg", url: "https://www.buzzfeed.com/eleanorbate/ice-cream-bacon-and-cheese", user_id: 7, board_id: 28)
Pin.create!(title: "Mechanized Pokemon", description: "so badass", image_url: "https://s-media-cache-ak0.pinimg.com/564x/80/0d/f5/800df55108468d4bc0a67c65363d5534.jpg", url: "http://9gag.com/gag/apLXNm8", user_id: 6, board_id: 25)
Pin.create!(title: "Caramel Macchiato for Daenerys Stormborn...", description: "Touche starbucks touche", image_url: "https://s-media-cache-ak0.pinimg.com/564x/3e/e9/f6/3ee9f60735c84f9ac98ad293150a1064.jpg", url: "http://www.hbo.com/game-of-thrones", user_id: 8, board_id: 32)
Pin.create!(title: "Self Feeding Fire, Camping Hack", description: "So clever, gravity is my friend", image_url: "https://s-media-cache-ak0.pinimg.com/564x/26/71/fb/2671fb2bd06da1df2ac0fe4171673fc1.jpg", url: "http://thewhoot.com.au/whoot-news/diy/how-to-build-a-self-feeding-fire", user_id: 6, board_id: 24)

Pin.create!(title: "Pikachu Avengers", description: "Move aside Thor, we've got new muscles in town", image_url: "https://s-media-cache-ak0.pinimg.com/564x/64/ce/14/64ce142726fe5ca50ddcc1374d11e5cf.jpg", url: "http://weheartit.com/entry/201495842/in-set/99558435-anime?context_user=DragonNatsu", user_id: 6, board_id: 25)

Pin.create!(title: "Best Photography of 2011", description: "What a stunning gallery", image_url: "https://s-media-cache-ak0.pinimg.com/564x/4e/0e/38/4e0e3809f4997acf71bebba521bff71a.jpg", url: "http://www.fromupnorth.com/best-of-2011-photography/", user_id: 3, board_id: 15)
Pin.create!(title: "10 Best things to do in Hong Kong on a Budget", description: "Hong Kong on a budget", image_url: "https://s-media-cache-ak0.pinimg.com/564x/08/fe/5b/08fe5b780e2b5dc770091e2df27ae190.jpg", url: "http://www.danflyingsolo.com/budget-hong-kong-weekend/", user_id: 5, board_id: 23)
