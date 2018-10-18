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
Pinboard.destroy_all

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
board1 = Board.create!(board_name: 'Chanel', user: user0)
board2 = Board.create!(board_name: 'Louis Vuitton', user: user0)
board3 = Board.create!(board_name: 'Hermes', user: user0)
board4 = Board.create!(board_name: 'Dior', user: user0)
board5 = Board.create!(board_name: 'Gabriela Hearst', user: user0)





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

# LV-----------------------------------------

pin14 = Pin.new(user: user0, description: 'Louis+Vuitton/bento-box-bb-monogram', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/bento-box-bb-monogram.png')
file14 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/bento-box-bb-monogram.png')
pin14.photo.attach(io: file14, filename: 'bento-box-bb-monogram.png')
pin14.save!

pin15 = Pin.new(user: user0, description: 'Louis+Vuitton/bleecker-box-monogram', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/bleecker-box-monogram.png')
file15 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/bleecker-box-monogram.png')
pin15.photo.attach(io: file15, filename: 'bleecker-box-monogram.png')
pin15.save!

pin16 = Pin.new(user: user0, description: 'Louis+Vuitton/cannes', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/cannes.png')
file16 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/cannes.png')
pin16.photo.attach(io: file16, filename: 'cannes.png')
pin16.save!

pin17 = Pin.new(user: user0, description: 'Louis+Vuitton/capucines-bb-crocodilien-brillant', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/capucines-bb-crocodilien-brillant.png')
file17 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/capucines-bb-crocodilien-brillant.png')
pin17.photo.attach(io: file17, filename: 'capucines-bb-crocodilien-brillant.png')
pin17.save!

pin18 = Pin.new(user: user0, description: 'Louis+Vuitton/capucines-mini-capucines-nvprod', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/capucines-mini-capucines-nvprod.png')
file18 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/capucines-mini-capucines-nvprod.png')
pin18.photo.attach(io: file18, filename: 'capucines-mini-capucines-nvprod.png')
pin18.save!

pin19 = Pin.new(user: user0, description: 'Louis+Vuitton/horizon-50-monogram', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/horizon-50-monogram.png')
file19 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/horizon-50-monogram.png')
pin19.photo.attach(io: file19, filename: 'horizon-50-monogram.png')
pin19.save!

pin20 = Pin.new(user: user0, description: 'Louis+Vuitton/louis-vuitton-keepall-55', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/louis-vuitton-keepall-55-bandoulie%CC%80re-monogram-eclipse-canvas-travel.png')
file20 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/louis-vuitton-keepall-55-bandoulie%CC%80re-monogram-eclipse-canvas-travel.png')
pin20.photo.attach(io: file20, filename: 'louis-vuitton-keepall-55-bandoulie%CC%80re-monogram-eclipse-canvas-travel.png')
pin20.save!

pin21 = Pin.new(user: user0, description: 'Louis+Vuitton/neverfull-mm-damier-ebene-nvprod', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/neverfull-mm-damier-ebene-nvprod.png')
file21 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/neverfull-mm-damier-ebene-nvprod.png')
pin21.photo.attach(io: file21, filename: 'neverfull-mm-damier-ebene-nvprod.png')
pin21.save!

pin22 = Pin.new(user: user0, description: 'Louis+Vuitton/palm-springs-backpack-mini', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/palm-springs-backpack-mini.png')
file22 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/palm-springs-backpack-mini.png')
pin22.photo.attach(io: file22, filename: 'palm-springs-backpack-mini.png')
pin22.save!

pin23 = Pin.new(user: user0, description: 'Louis+Vuitton/petite-boite-chapeau-ep', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/petite-boite-chapeau-ep.png')
file23 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/petite-boite-chapeau-ep.png')
pin23.photo.attach(io: file23, filename: 'petite-boite-chapeau-ep.png')
pin23.save!

pin24 = Pin.new(user: user0, description: 'Louis+Vuitton/petite-boite-chapeau-monogram', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/petite-boite-chapeau-monogram.png')
file24 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/petite-boite-chapeau-monogram.png')
pin24.photo.attach(io: file24, filename: 'petite-boite-chapeau-monogram.png')
pin24.save!

pin25 = Pin.new(user: user0, description: 'Louis+Vuitton/ruffle-bag-monogram', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/ruffle-bag-monogram.png')
file25 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/ruffle-bag-monogram.png')
pin25.photo.attach(io: file25, filename: 'ruffle-bag-monogram.png')
pin25.save!

pin26 = Pin.new(user: user0, description: 'Louis+Vuitton/venice-patent-leather', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/venice-patent-leather.png')
file26 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/venice-patent-leather.png')
pin26.photo.attach(io: file26, filename: 'venice-patent-leather.png')
pin26.save!

pin27 = Pin.new(user: user0, description: 'Louis+Vuitton/petite-malle-epi', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/petite-malle-epi.png')
file27 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/petite-malle-epi.png')
pin27.photo.attach(io: file27, filename: 'petite-malle-epi.png')
pin27.save!

pin28 = Pin.new(user: user0, description: 'Louis+Vuitton/petite-malle-monogram', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/petite-malle-monogram.png')
file28 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Louis+Vuitton/petite-malle-monogram.png')
pin28.photo.attach(io: file28, filename: 'petite-malle-monogram.png')
pin28.save!

# Hermes-------------------------
pin29 = Pin.new(user: user0, description: 'Hermes/evelyne-iii-33', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/evelyne-iii-33.jpg')
file29 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/evelyne-iii-33.jpg')
pin29.photo.attach(io: file29, filename: 'evelyne-iii-33.jpg')
pin29.save!

pin30 = Pin.new(user: user0, description: 'Hermes/fortunio-clutch', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/fortunio-clutch.jpg')
file30 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/fortunio-clutch.jpg')
pin30.photo.attach(io: file30, filename: 'fortunio-clutch.jpg')
pin30.save!

pin31 = Pin.new(user: user0, description: 'Hermes/halzan-mini-bag', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/halzan-mini-bag.jpg')
file31 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/halzan-mini-bag.jpg')
pin31.photo.attach(io: file31, filename: 'halzan-mini-bag.jpg')
pin31.save!

pin32 = Pin.new(user: user0, description: 'Hermes/jypsiere-28', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/jypsiere-28.jpg')
file32 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/jypsiere-28.jpg')
pin32.photo.attach(io: file32, filename: 'jypsiere-28.jpg')
pin32.save!

pin33 = Pin.new(user: user0, description: 'Hermes/lindy-30-bag', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/lindy-30-bag.jpg')
file33 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/lindy-30-bag.jpg')
pin33.photo.attach(io: file33, filename: 'lindy-30-bag.jpg')
pin33.save!

pin34 = Pin.new(user: user0, description: 'Hermes/pliplat-clutch', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/pliplat-clutch.jpg')
file34 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/pliplat-clutch.jpg')
pin34.photo.attach(io: file34, filename: 'pliplat-clutch.jpg')
pin34.save!

pin35 = Pin.new(user: user0, description: 'Hermes/toolbox-26', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/toolbox-26.jpg')
file35 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/toolbox-26.jpg')
pin35.photo.attach(io: file35, filename: '/toolbox-26.jpg')
pin35.save!

pin36 = Pin.new(user: user0, description: 'Hermes/verrou-chaine-mini-bag-black', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/verrou-chaine-mini-bag-black.jpg')
file36 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/verrou-chaine-mini-bag-black.jpg')
pin36.photo.attach(io: file36, filename: 'verrou-chaine-mini-bag-black.jpg')
pin36.save!

pin37 = Pin.new(user: user0, description: 'Hermes/verrou-chaine-mini-bag', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/verrou-chaine-mini-bag.jpg')
file37 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Hermes/verrou-chaine-mini-bag.jpg')
pin37.photo.attach(io: file37, filename: 'verrou-chaine-mini-bag.jpg')
pin37.save!

# dior-----------

pin38 = Pin.new(user: user0, description: 'Dior/DIOR-BOOK-TOTE-DIOR-OBLIQUE-BAG', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/DIOR+BOOK+TOTE+DIOR+OBLIQUE+BAG.jpg')
file38 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/DIOR+BOOK+TOTE+DIOR+OBLIQUE+BAG.jpg')
pin38.photo.attach(io: file38, filename: 'DIOR+BOOK+TOTE+DIOR+OBLIQUE+BAG.jpg')
pin38.save!

pin39 = Pin.new(user: user0, description: 'Dior/DIOR-OBLIQUE-SADDLE-BAG', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/DIOR+OBLIQUE+SADDLE+BAG.jpg')
file39 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/DIOR+OBLIQUE+SADDLE+BAG.jpg')
pin39.photo.attach(io: file39, filename: 'DIOR+OBLIQUE+SADDLE+BAG.jpg')
pin39.save!

pin40 = Pin.new(user: user0, description: '/Dior/LADY-DIOR-CALFSKIN-BAG', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/LADY+DIOR+CALFSKIN+BAG.jpg')
file40 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/LADY+DIOR+CALFSKIN+BAG.jpg')
pin40.photo.attach(io: file40, filename: 'LADY+DIOR+CALFSKIN+BAG.jpg')
pin40.save!

pin41 = Pin.new(user: user0, description: 'Dior/MINI-JADIOR-CALFSKIN-BAG', url:"https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/MINI+J'ADIOR+CALFSKIN+BAG.jpg")
file41 = EzDownload.open("https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/MINI+J'ADIOR+CALFSKIN+BAG.jpg")
pin41.photo.attach(io: file41, filename: 'MINI+JADIOR+CALFSKIN+BAG.jpg')
pin41.save!

pin42 = Pin.new(user: user0, description: 'Dior/MINI-LADY-DIOR-SATIN-BAG', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/MINI+LADY+DIOR+SATIN+BAG.jpg')
file42 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/MINI+LADY+DIOR+SATIN+BAG.jpg')
pin42.photo.attach(io: file42, filename: 'MINI+LADY+DIOR+SATIN+BAG.jpg')
pin42.save!

pin43 = Pin.new(user: user0, description: 'Dior/SMALL-DIORAMA-CALFSKIN-BAG', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/SMALL+DIORAMA+CALFSKIN+BAG.jpg')
file43 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Dior/SMALL+DIORAMA+CALFSKIN+BAG.jpg')
pin43.photo.attach(io: file43, filename: 'SMALL+DIORAMA+CALFSKIN+BAG.jpg')
pin43.save!


#GH-----
pin45 = Pin.new(user: user0, description: 'Gabriela+Hearst/ClineBag', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/ClineBag.jpg')
file45 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/ClineBag.jpg')
pin45.photo.attach(io: file45, filename: 'ClineBag.jpg')
pin45.save!

pin46 = Pin.new(user: user0, description: 'Gabriela+Hearst/DemiBag', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/DemiBag.jpg')
file46 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/DemiBag.jpg')
pin46.photo.attach(io: file46, filename: 'DemiBag.jpg')
pin46.save!

pin47 = Pin.new(user: user0, description: 'Gabriela+Hearst/DemiBagSatin', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/DemiBagSatin.jpg')
file47 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/DemiBagSatin.jpg')
pin47.photo.attach(io: file47, filename: 'DemiBagSatin.jpg')
pin47.save!

pin48 = Pin.new(user: user0, description: 'Gabriela+Hearst/DianaBagSnake', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/DianaBagSnake.jpg')
file48 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/DianaBagSnake.jpg')
pin48.photo.attach(io: file48, filename: 'DianaBagSnake.jpg')
pin48.save!

pin49 = Pin.new(user: user0, description: 'Gabriela+Hearst/EllaBag', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/EllaBag.jpg')
file49 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/EllaBag.jpg')
pin49.photo.attach(io: file49, filename: 'EllaBag.jpg')
pin49.save!

pin50 = Pin.new(user: user0, description: 'Gabriela+Hearst/MitchellBagwSnake', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/MitchellBagwSnake.jpg')
file50 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/MitchellBagwSnake.jpg')
pin50.photo.attach(io: file50, filename: 'MitchellBagwSnake.jpg')
pin50.save!

pin51 = Pin.new(user: user0, description: 'Gabriela+Hearst/NinaBag', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/NinaBag.jpg')
file51 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Gabriela+Hearst/NinaBag.jpg')
pin51.photo.attach(io: file51, filename: 'NinaBag.jpg')
pin51.save!

# pin = Pin.new(user: user0, description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!

pinboard1 = Pinboard.create!(pin_id: 1, board_id: 1)
pinboard2 = Pinboard.create!(pin_id: 2, board_id: 1)
pinboard3 = Pinboard.create!(pin_id: 3, board_id: 1)
pinboard4 = Pinboard.create!(pin_id: 4, board_id: 1)
pinboard5 = Pinboard.create!(pin_id: 5, board_id: 1)
pinboard6 = Pinboard.create!(pin_id: 6, board_id: 1)
pinboard7 = Pinboard.create!(pin_id: 7, board_id: 1)
pinboard8 = Pinboard.create!(pin_id: 8, board_id: 1)
pinboard9 = Pinboard.create!(pin_id: 9, board_id: 1)
pinboard10 = Pinboard.create!(pin_id: 10, board_id: 1)
pinboard11 = Pinboard.create!(pin_id: 11, board_id: 1)
pinboard12 = Pinboard.create!(pin_id: 12, board_id: 1)
pinboard13 = Pinboard.create!(pin_id: 13, board_id: 1)
