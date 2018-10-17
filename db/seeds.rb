# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Pin.destroy_all
Board.destroy_all

user0 = User.create!(email: 'demo@gmail.com', age: 25, password: 'demo25', username: 'demo')
user1 = User.create!(email: 'alice@gmail.com', age: 25, password: 'alice25', username: 'alice' )
user2 = User.create!(email: 'bob@gmail.com', age: 100, password: 'bob100', username: 'bob' )
user3 = User.create!(email: 'carly@gmail.com', age: 26, password: 'carly26', username: 'carly')
user4 = User.create!(email: 'danny@gmail.com', age: 27, password: 'danny27', username: 'danny')
user5 = User.create!(email: 'eric@gmail.com', age: 31, password: 'eric31', username: 'eric')
user6 = User.create!(email: 'andy@gmail.com', age: 266, password: 'andypassword', username: 'Andy')


# board1 = User.first.boards.create(board_name: 'test1')
# board1.pins.create!(user: User.first, description: 'pin1')
# board1.pins.create!(user: User.first, description: 'pin2')
# board2 = User.first.boards.create(board_name: 'test2')
# board2.pins.create!(user: User.first, description: 'pin3')

# pin = Pin.new(description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!

pin1 = Pin.new(user: user0, description: 'chanel-boy-chanel-handbag-silver-python-metallic-lambskin-ruthenium-finish-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/boy-chanel-handbag-silver-python-metallic-lambskin-ruthenium-finish-metal.jpg')
file1 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/boy-chanel-handbag-silver-python-metallic-lambskin-ruthenium-finish-metal.jpg')
pin1.photo.attach(io: file1, filename: 'boy-chanel-handbag-silver-python-metallic-lambskin-ruthenium-finish-metal.jpg')
pin1.save!

pin2 = Pin.new(user: user0, description: 'chanel-2-55-handbag-black-aged-calfskin-charms-gold-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/2-55-handbag-black-aged-calfskin-charms-gold-tone-metal.jpg')
file2 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/2-55-handbag-black-aged-calfskin-charms-gold-tone-metal.jpg')
pin2.photo.attach(io: file2, filename: '2-55-handbag-black-aged-calfskin-charms-gold-tone-metal.jpg')
pin2.save!

pin3 = Pin.new(user: user0, description: 'chanel-s-gabrielle-small-backpack-navy-blue-shearling-sheepskin-calfskin-silver-tone-gold-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/chanel-s-gabrielle-small-backpack-navy-blue-shearling-sheepskin-calfskin-silver-tone-gold-tone-metal.jpg')
file3 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/chanel-s-gabrielle-small-backpack-navy-blue-shearling-sheepskin-calfskin-silver-tone-gold-tone-metal.jpg')
pin3.photo.attach(io: file3, filename: 'chanel-s-gabrielle-small-backpack-navy-blue-shearling-sheepskin-calfskin-silver-tone-gold-tone-metal.jpg')
pin3.save!

pin4 = Pin.new(user: user0, description: 'chanel-s-gabrielle-small-hobo-bag-pink-aged-calfskin-smooth-calfskin-silver-tone-gold-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/chanel-s-gabrielle-small-hobo-bag-pink-aged-calfskin-smooth-calfskin-silver-tone-gold-tone-metal.jpg')
file4 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/chanel-s-gabrielle-small-hobo-bag-pink-aged-calfskin-smooth-calfskin-silver-tone-gold-tone-metal.jpg')
pin4.photo.attach(io: file4, filename: 'chanel-s-gabrielle-small-hobo-bag-pink-aged-calfskin-smooth-calfskin-silver-tone-gold-tone-metal.jpg')
pin4.save!

pin5 = Pin.new(user: user0, description: 'chanel-evening-bag-black-purple-resin-strass-silver-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/evening-bag-black-purple-resin-strass-silver-tone-metal.jpg')
file5 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/evening-bag-black-purple-resin-strass-silver-tone-metal.jpg')
pin5.photo.attach(io: file5, filename: 'evening-bag-black-purple-resin-strass-silver-tone-metal.jpg')
pin5.save!

pin6 = Pin.new(user: user0, description: 'chanel-evening-bag-black-resin-strass-ruthenium-finish-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/evening-bag-black-resin-strass-ruthenium-finish-metal.jpg')
file6 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/evening-bag-black-resin-strass-ruthenium-finish-metal.jpg')
pin6.photo.attach(io: file6, filename: 'evening-bag-black-resin-strass-ruthenium-finish-metal.jpg')
pin6.save!

pin7 = Pin.new(user: user0, description: 'chanel-flap-bag-black-white-suede-goatskin-strass-ruthenium-finish', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/flap-bag-black-white-suede-goatskin-strass-ruthenium-finish.jpg')
file7 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/flap-bag-black-white-suede-goatskin-strass-ruthenium-finish.jpg')
pin7.photo.attach(io: file7, filename: 'flap-bag-black-white-suede-goatskin-strass-ruthenium-finish.jpg')
pin7.save!

pin8 = Pin.new(user: user0, description: 'chanel-flap-bag-with-top-handle-ivory-grained-calfskin-elaphe-gold-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/flap-bag-with-top-handle-ivory-grained-calfskin-elaphe-gold-tone-metal.jpg')
file8 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/flap-bag-with-top-handle-ivory-grained-calfskin-elaphe-gold-tone-metal.jpg')
pin8.photo.attach(io: file8, filename: 'flap-bag-with-top-handle-ivory-grained-calfskin-elaphe-gold-tone-metal.jpg')
pin8.save!

pin9 = Pin.new(user: user0, description: 'chanel-large-2-55-handbag-black-aged-calfskin-gold-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/large-2-55-handbag-black-aged-calfskin-gold-tone-metal.jpg')
file9 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/large-2-55-handbag-black-aged-calfskin-gold-tone-metal.jpg')
pin9.photo.attach(io: file9, filename: 'large-2-55-handbag-black-aged-calfskin-gold-tone-metal.jpg')
pin9.save!

pin10 = Pin.new(user: user0, description: 'chanel-minaudiere-white-resin-strass-gold-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/minaudiere-white-resin-strass-gold-tone-metal.jpg')
file10 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/minaudiere-white-resin-strass-gold-tone-metal.jpg')
pin10.photo.attach(io: file10, filename: 'minaudiere-white-resin-strass-gold-tone-metal.jpg')
pin10.save!

pin11 = Pin.new(user: user0, description: 'chanel-mini-flap-bag-black-lambskin-gold-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/mini-flap-bag-black-lambskin-gold-tone-metal.jpg')
file11 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/mini-flap-bag-black-lambskin-gold-tone-metal.jpg')
pin11.photo.attach(io: file11, filename: 'mini-flap-bag-black-lambskin-gold-tone-metal.jpg')
pin11.save!

pin12 = Pin.new(user: user0, description: 'chanel-mini-flap-bag-green-lizard-gold-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/mini-flap-bag-green-lizard-gold-tone-metal.jpg')
file12 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/mini-flap-bag-green-lizard-gold-tone-metal.jpg')
pin12.photo.attach(io: file12, filename: 'mini-flap-bag-green-lizard-gold-tone-metal.jpg')
pin12.save!

pin13 = Pin.new(user: user0, description: 'chanel-vanity-case-beige-calfskin-gold-tone-metal', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/vanity-case-beige-calfskin-gold-tone-metal.jpg')
file13 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Chanel/vanity-case-beige-calfskin-gold-tone-metal.jpg')
pin13.photo.attach(io: file13, filename: 'vanity-case-beige-calfskin-gold-tone-metal.jpg')
pin13.save!

# -----------------------------------------

# pin14 = Pin.new(description: 'Louis+Vuitton/bento-box-bb-monogram', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/bento-box-bb-monogram.png')
# file14 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/bento-box-bb-monogram.png')
# pin14.photo.attach(io: file14, filename: 'bento-box-bb-monogram.png')
# pin14.save!

# pin15 = Pin.new(description: '', url:'')
# file15 = EzDownload.open('')
# pin15.photo.attach(io: file15, filename: '')
# pin15.save!
#
# pin16 = Pin.new(description: '', url:'')
# file16 = EzDownload.open('')
# pin16.photo.attach(io: file16, filename: '')
# pin16.save!
#
# pin17 = Pin.new(description: '', url:'')
# file17 = EzDownload.open('')
# pin17.photo.attach(io: file17, filename: '')
# pin17.save!
#
# pin18 = Pin.new(description: '', url:'')
# file18 = EzDownload.open('')
# pin18.photo.attach(io: file18, filename: '')
# pin18.save!
#
# pin19 = Pin.new(description: '', url:'')
# file19 = EzDownload.open('')
# pin19.photo.attach(io: file19, filename: '')
# pin19.save!
#
# pin20 = Pin.new(description: '', url:'')
# file20 = EzDownload.open('')
# pin20.photo.attach(io: file20, filename: '')
# pin20.save!
#
# pin21 = Pin.new(description: '', url:'')
# file21 = EzDownload.open('')
# pin21.photo.attach(io: file21, filename: '')
# pin21.save!
#
# pin22 = Pin.new(description: '', url:'')
# file22 = EzDownload.open('')
# pin22.photo.attach(io: file22, filename: '')
# pin22.save!
#
# pin23 = Pin.new(description: '', url:'')
# file23 = EzDownload.open('')
# pin23.photo.attach(io: file23, filename: '')
# pin23.save!
#
# pin24 = Pin.new(description: '', url:'')
# file24 = EzDownload.open('')
# pin24.photo.attach(io: file24, filename: '')
# pin24.save!
#
# pin = Pin.new(description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!
#
# pin = Pin.new(description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!
#
# pin = Pin.new(description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!
#
# pin = Pin.new(description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!
#
# pin = Pin.new(description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!
#
# pin = Pin.new(description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!
#
# pin = Pin.new(description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!
