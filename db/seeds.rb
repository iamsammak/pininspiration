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
description: "The creation of a single world comes from a huge number of fragments and chaos.")

User.create!(username: "totoro", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/c_crop,h_798,q_67,w_700/v1478626686/pinspiration/profile_pics/totoro.jpg",
description: "Everybody, try laughing. Then whatever scares you will go away!\n
I like nonsense; it wakes up the brain cells")

User.create!(username: "baymax", password: "password",
image_url: "http://res.cloudinary.com/dfazwubvc/image/upload/v1478626685/pinspiration/profile_pics/baymax.jpg",
description: "Hello. I am Baymax, your peronal healthcare companion\n
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

Board.create!(title: "Things I like", description: "I like", user_id: 7)
Board.create!(title: "Celebrities", description: "Hello friends", user_id: 7)
Board.create!(title: "Books on Books", description: "Soak in some knowledge", user_id: 7)

Board.create!(title: "Things I like", description: "Want them", user_id: 8)
Board.create!(title: "Cartoons", description: "Guilty pleasure", user_id: 8)
Board.create!(title: "Books", description: "Soak in some knowledge", user_id: 8)

Follow.create!(followee_id: 1, follower_id: 3)
Follow.create!(followee_id: 2, follower_id: 3)
Follow.create!(followee_id: 4, follower_id: 3)
Follow.create!(followee_id: 6, follower_id: 3)
Follow.create!(followee_id: 5, follower_id: 3)

Follow.create!(followee_id: 5, follower_id: 2)
Follow.create!(followee_id: 6, follower_id: 2)
Follow.create!(followee_id: 1, follower_id: 2)
Follow.create!(followee_id: 3, follower_id: 2)

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
Pin.create!(title: "Books are the key to another world...", description: "Read", image_url: "https://s-media-cache-ak0.pinimg.com/564x/83/6a/1b/836a1b622dc2f826dc3a151c16508af0.jpg", url: "https://s-media-cache-ak0.pinimg.com/originals/83/6a/1b/836a1b622dc2f826dc3a151c16508af0.jpg", user_id: 3, board_id: 13)
Pin.create!(title: "Chance the Rapper", description: "Coloring Book", image_url: "https://s-media-cache-ak0.pinimg.com/564x/5f/fa/e1/5ffae1888103cdb4452e107d0d796099.jpg", url: "https://trillartworks.tumblr.com/post/149535967946/trillartworks-chance-3", user_id: 3, board_id: 11)
Pin.create!(title: "100 Brilliant Color Combinations: And How to apply them to your designs", description: "A stunning collection of color palettes inspired by food, nature, travel and everyday items.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c3/21/0a/c3210a9126966c8ca9ad6cfd478e38b0.jpg", url: "https://designschool.canva.com/blog/100-color-combinations/?utm_content=bufferc6f3c&utm_medium=social&utm_source=pinterest.com&utm_campaign=buffer", user_id: 3, board_id: 12)
Pin.create!(title: "IKEA Hack: Craft Room Work Table", description: "This simple Ikea hack will make all of your craft room/home office dreams come true for about $160! ", image_url: "https://s-media-cache-ak0.pinimg.com/564x/6d/1b/89/6d1b89e3b8b44e237b8fc566a699407c.jpg", url: "http://www.landeeseelandeedo.com/2016/08/ikea-hack-craft-room-work-table.html", user_id: 3, board_id: 14)
Pin.create!(title: "Fairy Tale Wishing Well", description: "Imagination becomes the hidden realities", image_url: "https://s-media-cache-ak0.pinimg.com/564x/18/0b/69/180b699e8897d62585ea9b609cd8aee7.jpg", url: "http://www.designcrowd.com/design/8869854", user_id: 3, board_id: 13)
Pin.create!(title: "Amazingly Revealing Macro Photos of the Human Eye", description: "Macro Photography, my fav", image_url: "https://s-media-cache-ak0.pinimg.com/564x/8a/04/9d/8a049d0a51c13e59113e7888cf779c30.jpg", url: "http://www.mymodernmet.com/profiles/blogs/suren-manvelyan-human-eyes", user_id: 3, board_id: 15)
Pin.create!(title: "Beautiful nature icons", description: "Makes me want to travel", image_url: "https://s-media-cache-ak0.pinimg.com/564x/5a/ae/a0/5aaea0d40a053310c2ca2a96f110fbd7.jpg", url: "http://huaban.com/pins/666519052/", user_id: 3, board_id: 12)
Pin.create!(title: "12 Free Ways to Learn Design", description: "Woo! Let's do this!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/0c/30/84/0c3084b0e36b37492fca47fbe38b4451.jpg", url: "https://creativemarket.com/blog/12-free-ways-to-learn-design?utm_source=cm-popular-products-email&utm_medium=email&utm_campaign=pp-06-04-15", user_id: 3, board_id: 12)
Pin.create!(title: "Hotel", description: "\#hotel \#logo", image_url: "https://s-media-cache-ak0.pinimg.com/564x/de/f7/b6/def7b694904830d5804ee5975b69e9ed.jpg", url: "http://bestcreativity.com/blog/it/loghi-hotels-alberghi-ottimi-esempi-cui-ispirarsi/", user_id: 3, board_id: 12)
Pin.create!(title: "Nora En Pure announces \"Tell My Heart Tour\" 2016 world tour dates", description: "Nora En Pure announces \"Tell My Heart Tour\" 2016 world tour dates", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e9/17/1e/e9171ebfd7c405f416e84c91d6a62e2d.jpg", url: "http://www.soundlr.com/news/nora-en-pure-announces-tell-my-heart-tour-2016-world-tour-dates/", user_id: 3, board_id: 11)
Pin.create!(title: "25 Cool Illustrations, Paintings & Drawings", description: "In From up North's inspiration galleries we present our latest findings from the wonderful world of design", image_url: "https://s-media-cache-ak0.pinimg.com/564x/3f/55/b8/3f55b8842621818be45ba8060cb983fe.jpg", url: "http://www.fromupnorth.com/illustration-inspiration-1080/", user_id: 3, board_id: 13)
Pin.create!(title: "Our Ends are Beginnings", description: "Art Print by ParadisiacPicture", image_url: "https://s-media-cache-ak0.pinimg.com/564x/50/76/de/5076de85a76a0dc1e54fdd8140bd0f10.jpg", url: "https://society6.com/product/our-ends-are-beginnings-limited-print_print#s6-2839648p4a1v45", user_id: 3, board_id: 13)
Pin.create!(title: "Strange Gravity", description: "Another world", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ec/92/ee/ec92ee623b917be79603ecad0ee5ff80.jpg", url: "https://s-media-cache-ak0.pinimg.com/564x/ec/92/ee/ec92ee623b917be79603ecad0ee5ff80.jpg", user_id: 3, board_id: 13)
Pin.create!(title: "Metropolis 225", description: "Toshio Hatanaka aka Ataboh", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c0/b0/7d/c0b07dbcae6658d85ebbe7fe4d8bfa41.jpg", url: "http://www.stripyamanita.com/metropolis225-ataboh/", user_id: 3, board_id: 13)
Pin.create!(title: "Taeyeon", description: "Go listen to her new single", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c0/16/5d/c0165d3b9eefb67a73f3a92206a9f03d.jpg", url: "http://fy-girls-generation.tumblr.com/post/133981629762/wish5503", user_id: 3, board_id: 10)
Pin.create!(title: "Scenic Bliss", description: "The Art of Animation", image_url: "https://s-media-cache-ak0.pinimg.com/564x/95/38/08/9538082cb7b9f0799cb97e599363c755.jpg", url: "http://theartofanimation.tumblr.com/post/135771690544/ghost-i-httpghostillustrationscom", user_id: 3, board_id: 13)
Pin.create!(title: "Ritual 02", description: "Matteo Bassini", image_url: "https://s-media-cache-ak0.pinimg.com/564x/4e/b5/6b/4eb56b3f9eb7e38b52f820b8776288f9.jpg", url: "https://www.artstation.com/artwork/G1roB", user_id: 3, board_id: 13)
Pin.create!(title: "9 Gorgeous Beauty Ideas to Steal from the Oscars", description: "Best in Oscars beauty: Anna Kendrick", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e9/5a/f5/e95af5c58ad6971446c643c79c6b3cb0.jpg", url: "http://www.teenvogue.com/gallery/oscar-awards-best-in-beauty?slide=3", user_id: 3, board_id: 10)
Pin.create!(title: "Tokimonsta", description: "Put it Down (feat. Anderson .Paak & KRNE), go listen", image_url: "https://s-media-cache-ak0.pinimg.com/564x/90/0a/6b/900a6b6aaefa0fd5635771e967854ece.jpg", url: "https://twitter.com/tokimonsta?lang=en", user_id: 3, board_id: 11)
Pin.create!(title: "Black/White Hugh Jackman", description: "Hugh Jackman | Acting is something I love. It’s a great craft that I have a lot of respect for. But I don’t think it’s any greater challenge than teaching 8-year-olds or any other career. In my life, I try not to make it more important than it is and I just hope that rubs off on the people around me.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/89/3f/ae/893faeae1ebfc01356fbba890ad4b555.jpg", url: "http://crossingilandmono.tumblr.com/post/94465274803", user_id: 3, board_id: 10)
Pin.create!(title: "City in the Clouds", description: "Zinchao Cai Art", image_url: "https://s-media-cache-ak0.pinimg.com/564x/d3/ff/05/d3ff05928d2f71104726f4516fb749d2.jpg", url: "http://theartofanimation.tumblr.com/post/119592098768/zhichao-cai", user_id: 3, board_id: 13)
Pin.create!(title: "Starry Animals Textura Textury", description: "This is definitely on that dopedope", image_url: "https://s-media-cache-ak0.pinimg.com/564x/87/ac/aa/87acaad7a71c3b3cd841a59f7e7840cb.jpg", url: "http://homeadgarden.blogspot.in/?s=aHR0cDovL3dlYmNvZGVzaG9vbHMuY29tLz9wPTMwNzQ2OA==", user_id: 3, board_id: 12)
Pin.create!(title: "Visual Graphic \#moon", description: "Sooooo clean!! Gah beauty in simplicity", image_url: "http://a1.dspncdn.com/media/692x/dd/f7/73/ddf7734568b382d6159e5f2b1bcbed7d.jpg", url: "http://designspiration.net/image/1738862619345/", user_id: 3, board_id: 12)
Pin.create!(title: "Remembering Robin Williams", description: "True talent", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e8/28/1f/e8281fc3f36d496f9400215f2cff3ea3.jpg", url: "http://www.vogue.com/964995/remembering-robin-williams/#1", user_id: 3, board_id: 10)
Pin.create!(title: "101 Epic IKEA Hacks for Your Home", description: "I've scoured the web for the best IKEA hacks for the home and for families---check them out in the slideshow above. ", image_url: "https://s-media-cache-ak0.pinimg.com/564x/cd/78/31/cd7831d1ece992031ba854298a415f77.jpg", url: "http://www.momtastic.com/diy/518049-ikea-hacks/?slideshow=1275#/slide/71", user_id: 3, board_id: 14)
Pin.create!(title: "15 Clever Small Space Tips From Design Bloggers", description: "The organization experts at HGTV.com talk to design bloggers for smart and creative ideas about creating storage in a small space", image_url: "https://s-media-cache-ak0.pinimg.com/564x/05/41/e0/0541e063665c83e35299762ad5da209f.jpg", url: "http://www.hgtv.com/design/decorating/design-101/small-space-tips-from-design-bloggers-pictures", user_id: 3, board_id: 14)
Pin.create!(title: "32 Stunning Patio Outdoor Lighting Ideas", description: "Looking to for outdoor lighting, outdoor lights, patio lights & garden lights? Access our photo gallery from top outdoor designers and get", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a2/4d/7c/a24d7c1b210b67d86b0f6f57ba742962.jpg", url: "http://www.homedesignetc.com/stunning-patio-lighting/", user_id: 3, board_id: 14)
Pin.create!(title: "Ad Campaign Feat. Park Shin Hye", description: "Couch Kimchi", image_url: "https://s-media-cache-ak0.pinimg.com/564x/2e/0c/8f/2e0c8f9d671aad64a2d0dd78bd4c8a9e.jpg", url: "http://couch-kimchi.com/2015/09/11/viki-fw-2015-ad-campaign-feat-park-shin-hye/", user_id: 3, board_id: 10)
Pin.create!(title: "Halloween Special", description: "Anakama's \"Abraca\" video game", image_url: "https://s-media-cache-ak0.pinimg.com/564x/db/bb/a5/dbbba5b859818b205af5cca43438855b.jpg", url: "http://catfishdeluxe.tumblr.com/post/132529018897/more-concept-art-for-ankamas-abraca-videogame", user_id: 3, board_id: 13)
Pin.create!(title: "Self Taught Photography Takes Unbelievable Wedding Photos", description: "You're hired, I just need to find the Bae to my max.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/20/7a/15/207a1538554f53e0422bff213502bd1b.jpg", url: "http://www.boredpanda.com/eye-reflection-wedding-photography-eyescapes-peter-adams/?utm_source=iosapp&utm_medium=social&utm_campaign=iosapp", user_id: 3, board_id: 15)
Pin.create!(title: "7 Surreal Landscapes", description: "Time to go to Japan", image_url: "https://s-media-cache-ak0.pinimg.com/564x/1b/b2/96/1bb296e42a13deb9156d910774559b7d.jpg", url: "http://www.bt-images.net/surreal-landscapes/", user_id: 3, board_id: 15)
Pin.create!(title: "18 Celebrities Morphed Into Stunningly Perfect People", description: "Buzzfeed article", image_url: "https://s-media-cache-ak0.pinimg.com/564x/f6/ed/9e/f6ed9e479ee7eb73ff11639bfe4d6d60.jpg", url: "https://www.buzzfeed.com/mrloganrhoades/18-celebrity-morph-combinations-that-are-stunningly-perfect?sub=3945644_6578454&utm_term=.sinQL3e2WN#.jgzl2BmN8X", user_id: 3, board_id: 10)
Pin.create!(title: "Anderson .Paak", description: "Killed it at Coachella", image_url: "https://s-media-cache-ak0.pinimg.com/564x/14/56/20/1456204f1f1edcf2dba4c54560fdf09d.jpg", url: "http://tempsreel.nouvelobs.com/culture/20160129.OBS3640/malibu-d-anderson-paak-un-album-irresistiblement-rond-cool-et-funky.html", user_id: 3, board_id: 11)
Pin.create!(title: "American Music Awards 2015 Red Carpet", description: "Zendaya, Selena Gomez, Gigi Hadid and more at the American Music Awards on Sunday night in Los Angeles.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ee/2d/09/ee2d09c8c3bef4d048ba9e0193b567fb.jpg", url: "http://www.nytimes.com/slideshow/2015/11/22/fashion/american-music-awards-2015-red-carpet/s/AMA-2015-red-carpet-slide-IZMS.html?smid=pi-nytimes&smtyp=cur&crlt.pid=camp.I6b2IdF99OTj", user_id: 3, board_id: 10)
Pin.create!(title: "Murakami by Made In Heights", description: "Rewind-like Japanese dialogue intro", image_url: "https://s-media-cache-ak0.pinimg.com/564x/10/1f/cd/101fcd82ca4329d5a9a852d1b4748c6b.jpg", url: "http://www.throughmyheadphones.com/made-heights-murakami/", user_id: 3, board_id: 11)
Pin.create!(title: "Andrew taggart of The Chainsmokers", description: "2016 Coachella Photos Day 3", image_url: "https://s-media-cache-ak0.pinimg.com/564x/de/b8/fa/deb8faff7764ab1519c965425861e47f.jpg", url: "http://www.billboard.com/photos/7334050/2016-coachella-photos-performances-backstage-parties-more/56", user_id: 3, board_id: 11)
Pin.create!(title: "What Superpower Would You Have In A Parallel Universe?", description: "I can already fly with Hiro's upgrades", image_url: "https://s-media-cache-ak0.pinimg.com/564x/e3/33/56/e33356121c4666f982b926946e91a5a0.jpg", url: "http://www.playbuzz.com/limaop10/what-superpower-would-you-have-in-a-parallel-universe", user_id: 3, board_id: 15)
Pin.create!(title: "Best Photography of 2011", description: "What a stunning gallery", image_url: "https://s-media-cache-ak0.pinimg.com/564x/4e/0e/38/4e0e3809f4997acf71bebba521bff71a.jpg", url: "http://www.fromupnorth.com/best-of-2011-photography/", user_id: 3, board_id: 15)
Pin.create!(title: "Hong Jong Kyun", description: "Eastern Trends Magazine April", image_url: "https://s-media-cache-ak0.pinimg.com/564x/02/98/e5/0298e50bef8790e48fe19cac57634763.jpg", url: "http://kmagazinelovers.tumblr.com/post/142204409601/hong-jong-hyun-eastern-trends-magazine-april", user_id: 3, board_id: 10)
Pin.create!(title: "Anderson .Paak & The Free Nationals", description: "NPR's Tiny Desk Concert", image_url: "https://s-media-cache-ak0.pinimg.com/564x/dd/e4/61/dde461a44632775d3b8843f4bd7fbbaf.jpg", url: "http://www.okayplayer.com/news/anderson-paak-the-free-nationals-storm-nprs-tiny-desk-concert.html", user_id: 3, board_id: 11)
Pin.create!(title: "20 Beautiful Bedroom Color Schemes To Choose From", description: "20 Beautiful Bedroom Color Schemes To Choose From", image_url: "https://s-media-cache-ak0.pinimg.com/564x/86/ed/88/86ed88033076456c09731da318370430.jpg", url: "http://www.homedesignetc.com/bathrooms/", user_id: 3, board_id: 14)
Pin.create!(title: "DIY floating corner shelves", description: "Way to utilize space", image_url: "https://s-media-cache-ak0.pinimg.com/564x/5a/7a/f8/5a7af83e559658ca349cd6bd615ad654.jpg", url: "http://mrandmrsinterior.com/interior-design/diy-floating-corner-shelves", user_id: 3, board_id: 14)
Pin.create!(title: "18 Fire Pit Ideas For Your Backyard", description: "Outdoor crafts and builds", image_url: "https://s-media-cache-ak0.pinimg.com/564x/2a/72/8d/2a728d4deff7d92fad9357d2795631e1.jpg", url: "http://bestofdiyideas.com/18-fire-pit-ideas-for-your-backyard/fire-pit-ideas-for-back-yard-seating-decoration/", user_id: 3, board_id: 14)
Pin.create!(title: "Firewatch", description: "Concept Art by Olly Moss", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a6/b0/c4/a6b0c4ca9fddd9cdc3690d6ccf3f252c.jpg", url: "http://blog.camposanto.com/", user_id: 3, board_id: 13)
Pin.create!(title: "30 Luxury Shower Designs Demonstrating Latest Trends in Modern Bathrooms", description: "Must have rain shower!", image_url: "https://s-media-cache-ak0.pinimg.com/564x/16/b6/2e/16b62e7b24a85c46a566f721d045c9ed.jpg", url: "http://www.lushome.com/30-luxury-shower-designs-demonstrating-latest-trends-modern-bathrooms/147025", user_id: 3, board_id: 14)
Pin.create!(title: "11 Super Simple Ideas for What to Post on Instagram", description: "Keep the hearts and comments rolling", image_url: "https://s-media-cache-ak0.pinimg.com/564x/43/c7/ba/43c7ba522a27ecc571d0be121213fca7.jpg", url: "http://www.postplanner.com/ideas-for-what-to-post-on-instagram/", user_id: 3, board_id: 15)

Pin.create!(title: "Howl's Moving Castle", description: "Love the art interpretation", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c2/cc/64/c2cc6425ef56af593dacfbaa4274bb60.jpg", url: "https://s-media-cache-ak0.pinimg.com/564x/c2/cc/64/c2cc6425ef56af593dacfbaa4274bb60.jpg", user_id: 1, board_id: 1)
Pin.create!(title: "21 Amazingly Profound Quotes From Hayao Miyazaki", description: "Haha, quotes by me.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/6f/c9/6a/6fc96a46b59df470a4bec76bfc399f13.jpg", url: "https://www.buzzfeed.com/juliapugachevsky/amazingly-profound-quotes-from-hayao-miyazaki", user_id: 1, board_id: 1)
Pin.create!(title: "A Delightful Portrait of Hayao Miyazaki Made Out of Ghibli Characters", description: "Me.", image_url: "https://s-media-cache-ak0.pinimg.com/564x/fa/87/ba/fa87ba595a6fbae45042930729eae037.jpg", url: "http://io9.gizmodo.com/a-delightful-portrait-of-hayao-miyazaki-made-out-of-ghi-1516859011", user_id: 1, board_id: 1)
Pin.create!(title: "Studio Ghilbi illustrations by Tyler Stout", description: "I approve", image_url: "https://s-media-cache-ak0.pinimg.com/564x/46/10/93/461093b4b503869c87053b366129aaa6.jpg", url: "https://s-media-cache-ak0.pinimg.com/564x/46/10/93/461093b4b503869c87053b366129aaa6.jpg", user_id: 1, board_id: 1)
Pin.create!(title: "Home", description: "Wow this person might be better than me", image_url: "https://s-media-cache-ak0.pinimg.com/564x/47/8f/ce/478fcefaad3e0f5b7cd72c55d35114a5.jpg", url: "http://www.duitang.com/blog/?id=93792539", user_id: 1, board_id: 1)
Pin.create!(title: "Tree Spirits", description: "Little joys in life", image_url: "https://s-media-cache-ak0.pinimg.com/564x/49/7c/ee/497cee12d0ddf3d95438591bc12eb8b7.jpg", url: "http://www.teetee.eu/en/overtime", user_id: 1, board_id: 2)
Pin.create!(title: "Ghilbi Hogwart Houses", description: "She would be proud of this crossover", image_url: "https://s-media-cache-ak0.pinimg.com/564x/32/c8/3e/32c83ee799d1ad7726e611938e806f36.jpg", url: "http://shirtoid.com/142306/ghibliwarts/", user_id: 1, board_id: 2)
Pin.create!(title: "Miyazaki Art Nouveau Style", description: "High five, 100% approve", image_url: "https://s-media-cache-ak0.pinimg.com/564x/bc/32/af/bc32af2dc7fde48bd2bf29ab58c781b9.jpg", url: "http://comicsalliance.com/miyazaki-art-nouveau-fan-art-tribute-alphonse-mucha-studio-ghibli/", user_id: 1, board_id: 2)
Pin.create!(title: "No Face", description: "love the simple colors", image_url: "https://s-media-cache-ak0.pinimg.com/564x/80/4a/0c/804a0ce659e0e08f548ffedc7b8dbc52.jpg", url: "http://www.redbubble.com/people/syntetyc/works/11488636", user_id: 1, board_id: 3)
Pin.create!(title: "Mononoke Hime", description: "The tones are on point(as the young ones say)", image_url: "https://s-media-cache-ak0.pinimg.com/564x/91/11/ec/9111ec2480973fd75ed52bf5c698000c.jpg", url: "https://twitter.com/miyazaki_ru/status/783337707154108416", user_id: 1, board_id: 3)
Pin.create!(title: "To Sixth Station", description: "This is gorgeous", image_url: "https://s-media-cache-ak0.pinimg.com/564x/66/80/bd/6680bd02fb8189c6290634f5348cd3dc.jpg", url: "http://c-dra.deviantart.com/art/Spirited-Away-To-Sixth-Station-513028592", user_id: 1, board_id: 3)
Pin.create!(title: "Respect Honesty Trust Loyalty", description: "Trust is gained", image_url: "https://s-media-cache-ak0.pinimg.com/564x/af/4c/66/af4c664017e4765514460ea039f8dea8.jpg", url: "http://modernparentsmessykids.com/category/happy-family-habits/", user_id: 1, board_id: 4)
Pin.create!(title: "15 Important Life lessons Taught In Miyazaki Films That People Often Forget", description: "Watch them over and over", image_url: "https://s-media-cache-ak0.pinimg.com/564x/87/66/2c/87662c72ceb4927690ed78396f781c3f.jpg", url: "http://www.lifehack.org/342682/15-important-life-lessons-taught-miyazaki-films-that-people-often-forget-2", user_id: 1, board_id: 4)
Pin.create!(title: "Sophie Hatter", description: "Blaze Califer, blaze on", image_url: "https://s-media-cache-ak0.pinimg.com/564x/a4/cc/49/a4cc492eacfeeaa3984714459a5f0e38.jpg", url: "http://muchpics.com/life-lessons-from-studio-ghibli-films-howls-moving-castle/", user_id: 1, board_id: 4)
Pin.create!(title: "Haruki Murakami", description: "Love his books", image_url: "https://s-media-cache-ak0.pinimg.com/564x/87/66/2c/87662c72ceb4927690ed78396f781c3f.jpg", url: "https://www.tumblr.com/tagged/what-i-talk-about-when-i-talk-about-running", user_id: 1, board_id: 5)
Pin.create!(title: "The Life-changing Magic of Tidying Up", description: "Marie Kondo, she is a talented individual", image_url: "https://s-media-cache-ak0.pinimg.com/564x/4b/ab/23/4bab23f9b215bc2e199d4ca7cd0efd67.jpg", url: "http://hubpages.com/living/clean-and-clutter-free", user_id: 1, board_id: 5)
Pin.create!(title: "Eddie Huang", description: "This guy cracks me up", image_url: "https://s-media-cache-ak0.pinimg.com/564x/08/ea/a2/08eaa273e81eb36cf797689cbf5222b9.jpg", url: "http://www.goodreads.com/book/show/15792558-fresh-off-the-boat", user_id: 1, board_id: 5)
Pin.create!(title: "10 Places You Must Visit In Thailand", description: "I won't retire but I could use a vacation", image_url: "https://s-media-cache-ak0.pinimg.com/564x/19/61/e5/1961e592eaa836b54896ace5c72f4e0e.jpg", url: "https://theculturetrip.com/asia/thailand/articles/10-places-you-must-visit-in-thailand/", user_id: 1, board_id: 6)
Pin.create!(title: "Everything you need to know about trips to see the Northern Lights", description: "The lights are out of this world", image_url: "https://s-media-cache-ak0.pinimg.com/564x/73/4d/52/734d5239a66dcf64cb94279b81d6234c.jpg", url: "http://www.telegraph.co.uk/travel/activity-and-adventure/The-northern-lights-Trip-of-a-Lifetime/", user_id: 1, board_id: 6)
Pin.create!(title: "New 7 Wonders of the World", description: "2 down and counting", image_url: "https://s-media-cache-ak0.pinimg.com/564x/38/51/46/385146865cdbfad019893c63467bc084.jpg", url: "http://amongraf.ro/new-seven-wonders-of-the-world-complete-list-of-the-7-wonders/5/", user_id: 1, board_id: 6)

Pin.create!(title: "Totoro can be like Michael Jordan", description: "Basketball I can play", image_url: "https://s-media-cache-ak0.pinimg.com/564x/82/43/c3/8243c3c1091b57e6ae24a5ba11f95ac5.jpg", url: "http://www.bt-images.net/top-20-inspiration-motivational-quotes/", user_id: 2, board_id: 7)
Pin.create!(title: "NBA Memes", description: "Totoro broke his own sleeping record the this morning", image_url: "https://s-media-cache-ak0.pinimg.com/564x/35/c2/73/35c273e9bf39878f07689ce4f1faf5bd.jpg", url: "https://twitter.com/nbamemes/status/586634528178880513", user_id: 2, board_id: 7)
Pin.create!(title: "Manny Pacquiao", description: "Totoro fights like Manny Pacquiao", image_url: "https://s-media-cache-ak0.pinimg.com/564x/9c/b6/3c/9cb63c814a9e19f23563514ec5d0110e.jpg", url: "http://designrfix.com/inspiration/tim-tadder", user_id: 2, board_id: 7)
Pin.create!(title: "Alex Wassabi", description: "If you're not smiling you're doing it wrong", image_url: "https://s-media-cache-ak0.pinimg.com/564x/f9/9a/d6/f99ad62711f0f69be98a9434a439ea60.jpg", url: "https://www.instagram.com/p/BKWvgSmB1g-/", user_id: 2, board_id: 8)
Pin.create!(title: "Laurdiy", description: "Totoro thinks she is a cactus", image_url: "https://s-media-cache-ak0.pinimg.com/564x/82/c3/36/82c33661ccb087386d7694b73a303169.jpg", url: "https://www.instagram.com/p/BLW4Rw7hxY2/", user_id: 2, board_id: 8)
Pin.create!(title: "Wongfu Productions", description: "Totoro likes to watch wongfu productions", image_url: "https://s-media-cache-ak0.pinimg.com/564x/ec/a3/22/eca32295a99e0076d39207906fcbd65c.jpg", url: "http://wongfuproductions.com/", user_id: 2, board_id: 8)
Pin.create!(title: "Komorebi", description: "Totoro likes komorebi", image_url: "https://s-media-cache-ak0.pinimg.com/564x/8a/a6/79/8aa679d198f92b41df00d22bd48fc5d7.jpg", url: "https://www.youtube.com/channel/UCutXfzLC5wrV3SInT_tdY0w", user_id: 2, board_id: 8)
Pin.create!(title: "How To Cook Perfect Eggs", description: "Totoro eats eggs every morning", image_url: "https://s-media-cache-ak0.pinimg.com/564x/04/6e/57/046e5765c5736567f681db6119d358dc.jpg", url: "https://www.buzzfeed.com/alisonroman/how-to-cook-eggs#.lnX7ePGkR", user_id: 2, board_id: 9)
Pin.create!(title: "25 Delightfully Cozy Gifts For Anyone Who Hates Leaving The House", description: "Totoro likes Netflix", image_url: "https://s-media-cache-ak0.pinimg.com/564x/c0/f0/ad/c0f0adb2ce2525c2035c5683b47a034d.jpg", url: "https://www.buzzfeed.com/sallytamarkin/indoorsy-af?crlt.pid=camp.FYzgPa2eM28q#.peMqzGnQAW", user_id: 2, board_id: 9)
Pin.create!(title: "These Mozzarella Stick Onion Rings Should Run For President", description: "NOM NOMS, GET IN MY BELLY", image_url: "https://s-media-cache-ak0.pinimg.com/564x/b4/23/c1/b423c1d1cebc5bd6e9ee1571252f64be.jpg", url: "https://www.buzzfeed.com/melissaharrison/mozzarella-stick-onion-rings?utm_term=.olDQzGZaa#.nogWElAdd", user_id: 2, board_id: 9)
