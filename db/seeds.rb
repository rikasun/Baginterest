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

# pin = Pin.new(description: '', url:'')
# file = EzDownload.open('')
# pin.photo.attach(io: file, filename: '')
# pin.save!
board1 = Board.create!(board_name: 'Chanel', user: user0)
board2 = Board.create!(board_name: 'Louis Vuitton', user: user0)
board3 = Board.create!(board_name: 'Hermes', user: user0)
board4 = Board.create!(board_name: 'Dior', user: user0)
board5 = Board.create!(board_name: 'Gabriela Hearst', user: user0)
board6 = Board.create!(board_name: 'Celine', user: user0)
board7 = Board.create!(board_name: 'Cult Gaia', user: user0)
board8 = Board.create!(board_name: 'Balenciaga', user: user0)
board9 = Board.create!(board_name: 'Fendi', user: user0)





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

# Celine -----------------------------------

pin52 = Pin.new(user: user0, description: 'Celine/MEDIUM-BIG-BAG-IN-SUPPLE-GRAINED-CALFSKIN', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MEDIUM+BIG+BAG+IN+SUPPLE+GRAINED+CALFSKIN.jpg')
file52 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MEDIUM+BIG+BAG+IN+SUPPLE+GRAINED+CALFSKIN.jpg')
pin52.photo.attach(io: file52, filename: 'MEDIUM+BIG+BAG+IN+SUPPLE+GRAINED+CALFSKIN.jpg')
pin52.save!

pin53 = Pin.new(user: user0, description: 'Celine/MEDIUM-CLASSIC-BAG+IN-LIZARD-GREEN', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MEDIUM+CLASSIC+BAG+IN+LIZARD+GREEN.jpg')
file53 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MEDIUM+CLASSIC+BAG+IN+LIZARD+GREEN.jpg')
pin53.photo.attach(io: file53, filename: 'MEDIUM+CLASSIC+BAG+IN+LIZARD+GREEN.jpg')
pin53.save!

pin54 = Pin.new(user: user0, description: 'Celine/MEDIUM-CLASSIC-BAG-IN-LIZARD', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MEDIUM+CLASSIC+BAG+IN+LIZARD.jpg')
file54 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MEDIUM+CLASSIC+BAG+IN+LIZARD.jpg')
pin54.photo.attach(io: file54, filename: 'MEDIUM+CLASSIC+BAG+IN+LIZARD.jpg')
pin54.save!

pin55 = Pin.new(user: user0, description: 'Celine/MICRO-LUGGAGE-HANDBAG-IN+DRUMMED-CALFSKIN', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MICRO+LUGGAGE+HANDBAG+IN+DRUMMED+CALFSKIN.jpg')
file55 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MICRO+LUGGAGE+HANDBAG+IN+DRUMMED+CALFSKIN.jpg')
pin55.photo.attach(io: file55, filename: 'MICRO+LUGGAGE+HANDBAG+IN+DRUMMED+CALFSKIN.jpg')
pin55.save!

pin56 = Pin.new(user: user0, description: 'Celine/MINI-BELT-BAG-IN-GRAINED-CALFSKIN', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MINI+BELT+BAG+IN+GRAINED+CALFSKIN.jpg')
file56 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Celine/MINI+BELT+BAG+IN+GRAINED+CALFSKIN.jpg')
pin56.photo.attach(io: file56, filename: 'MINI+BELT+BAG+IN+GRAINED+CALFSKIN.jpg')
pin56.save!

# cult gaia---------------------------------

pin57 = Pin.new(user: user0, description: 'Cult+Gaia/Acrylic+Luna+-+Malachite', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Acrylic+Luna+-+Malachite.jpg')
file57 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Acrylic+Luna+-+Malachite.jpg')
pin57.photo.attach(io: file57, filename: 'Acrylic+Luna+-+Malachite.jpg')
pin57.save!

pin58 = Pin.new(user: user0, description: 'Cult+Gaia/Acrylic+Luna+-+Malachite', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Acrylic+Luna+-+Malachite.jpg')
file58 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Acrylic+Luna+-+Malachite.jpg')
pin58.photo.attach(io: file58, filename: 'Acrylic+Luna+-+Malachite.jpg')
pin58.save!

pin59 = Pin.new(user: user0, description: 'Cult+Gaia/Cupola+Bag+-+Natural', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Cupola+Bag+-+Natural.jpg')
file59 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Cupola+Bag+-+Natural.jpg')
pin59.photo.attach(io: file59, filename: 'Cupola+Bag+-+Natural.jpg')
pin59.save!

pin60 = Pin.new(user: user0, description: 'Cult+Gaia/Gaia+Ark+-+Multi', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Gaia+Ark+-+Multi.jpg')
file60 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Gaia+Ark+-+Multi.jpg')
pin60.photo.attach(io: file60, filename: 'Gaia+Ark+-+Multi.jpg')
pin60.save!

pin61 = Pin.new(user: user0, description: 'Cult+Gaia/Gold+Lilleth', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Gold+Lilleth.jpg')
file61 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Gold+Lilleth.jpg')
pin61.photo.attach(io: file61, filename: 'Gold+Lilleth.jpg')
pin61.save!

pin62 = Pin.new(user: user0, description: 'Cult+Gaia/Zaha+Bag+-+Natural', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Zaha+Bag+-+Natural.jpg')
file62 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Cult+Gaia/Zaha+Bag+-+Natural.jpg')
pin62.photo.attach(io: file62, filename: 'Zaha+Bag+-+Natural.jpg')
pin62.save!

# balenciaga---------

pin63 = Pin.new(user: user0, description: 'Balenciaga/PUPPY-AND-KITTEN-MARKET-SHOPPER-M', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/PUPPY+AND+KITTEN+MARKET+SHOPPER+M.jpg')
file63 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/PUPPY+AND+KITTEN+MARKET+SHOPPER+M.jpg')
pin63.photo.attach(io: file63, filename: 'PUPPY+AND+KITTEN+MARKET+SHOPPER+M.jpg')
pin63.save!

pin64 = Pin.new(user: user0, description: 'Balenciaga/SMALL-JACQUARD-LOGO-BELT-BAG', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/SMALL+JACQUARD+LOGO+BELT+BAG.jpg')
file64 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/SMALL+JACQUARD+LOGO+BELT+BAG.jpg')
pin64.photo.attach(io: file64, filename: 'SMALL+JACQUARD+LOGO+BELT+BAG.jpg')
pin64.save!

pin65 = Pin.new(user: user0, description: 'Balenciaga/TRIANGLE+DUFFLE+M', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/TRIANGLE+DUFFLE+M.jpg')
file65 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/TRIANGLE+DUFFLE+M.jpg')
pin65.photo.attach(io: file65, filename: 'TRIANGLE+DUFFLE+M.jpg')
pin65.save!

pin66 = Pin.new(user: user0, description: 'Balenciaga/TRIANGLE+POUCH+M+GLITTER', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/TRIANGLE+POUCH+M+GLITTER.jpg')
file66 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/TRIANGLE+POUCH+M+GLITTER.jpg')
pin66.photo.attach(io: file66, filename: 'TRIANGLE+POUCH+M+GLITTER.jpg')
pin66.save!

pin67 = Pin.new(user: user0, description: 'Balenciaga/VILLE+GRAFFITI+TOP+HANDLE+S', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/VILLE+GRAFFITI+TOP+HANDLE+S+.jpg')
file67 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Balenciaga/VILLE+GRAFFITI+TOP+HANDLE+S+.jpg')
pin67.photo.attach(io: file67, filename: 'VILLE+GRAFFITI+TOP+HANDLE+S+.jpg')
pin67.save!

# Fendi----------------

pin67 = Pin.new(user: user0, description: 'Fendi/KAN+I+BLUE', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/KAN+I+BLUE.jpeg')
file67 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/KAN+I+BLUE.jpeg')
pin67.photo.attach(io: file67, filename: 'KAN+I+BLUE.jpeg')
pin67.save!

pin68 = Pin.new(user: user0, description: 'Fendi/KAN+I+LOGO', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/KAN+I+LOGO.jpeg')
file68 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/KAN+I+LOGO.jpeg')
pin68.photo.attach(io: file68, filename: 'KAN+I+LOGO.jpeg')
pin68.save!

pin69 = Pin.new(user: user0, description: 'Fendi/KAN+I', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/KAN+I.jpeg')
file69 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/KAN+I.jpeg')
pin69.photo.attach(io: file69, filename: 'KAN+I.jpeg')
pin69.save!

pin70 = Pin.new(user: user0, description: 'Fendi/MON+TRESOR', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/MON+TRESOR.jpeg')
file70 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/MON+TRESOR.jpeg')
pin70.photo.attach(io: file70, filename: 'MON+TRESOR.jpeg')
pin70.save!

pin71 = Pin.new(user: user0, description: 'Fendi/PEEKABOO+REGULAR+black', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/PEEKABOO+REGULAR+black.jpeg')
file71 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/PEEKABOO+REGULAR+black.jpeg')
pin71.photo.attach(io: file71, filename: 'PEEKABOO+REGULAR+black.jpeg')
pin71.save!

pin72 = Pin.new(user: user0, description: 'Fendi/PEEKABOO+REGULAR', url:'https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/PEEKABOO+REGULAR.jpeg')
file72 = EzDownload.open('https://s3-us-west-1.amazonaws.com/bagquest-pro/Fendi/PEEKABOO+REGULAR.jpeg')
pin72.photo.attach(io: file72, filename: 'PEEKABOO+REGULAR.jpeg')
pin72.save!



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


pinboard14 = Pinboard.create!(pin_id: 14, board_id: 2)
pinboard15 = Pinboard.create!(pin_id: 15, board_id: 2)
pinboard16 = Pinboard.create!(pin_id: 16, board_id: 2)
pinboard17 = Pinboard.create!(pin_id: 17, board_id: 2)
pinboard18 = Pinboard.create!(pin_id: 18, board_id: 2)
pinboard19 = Pinboard.create!(pin_id: 19, board_id: 2)
pinboard20 = Pinboard.create!(pin_id: 20, board_id: 2)
pinboard21 = Pinboard.create!(pin_id: 21, board_id: 2)
pinboard22 = Pinboard.create!(pin_id: 22, board_id: 2)
pinboard23 = Pinboard.create!(pin_id: 23, board_id: 2)
pinboard24 = Pinboard.create!(pin_id: 24, board_id: 2)
pinboard25 = Pinboard.create!(pin_id: 25, board_id: 2)
pinboard26 = Pinboard.create!(pin_id: 26, board_id: 2)
pinboard27 = Pinboard.create!(pin_id: 27, board_id: 2)
pinboard28 = Pinboard.create!(pin_id: 28, board_id: 2)

pinboard29 = Pinboard.create!(pin_id: 29, board_id: 3)
pinboard30 = Pinboard.create!(pin_id: 30, board_id: 3)
pinboard31 = Pinboard.create!(pin_id: 31, board_id: 3)
pinboard32 = Pinboard.create!(pin_id: 32, board_id: 3)
pinboard33 = Pinboard.create!(pin_id: 33, board_id: 3)
pinboard34 = Pinboard.create!(pin_id: 34, board_id: 3)
pinboard35 = Pinboard.create!(pin_id: 35, board_id: 3)
pinboard36 = Pinboard.create!(pin_id: 36, board_id: 3)
pinboard37 = Pinboard.create!(pin_id: 37, board_id: 3)


pinboard38 = Pinboard.create!(pin_id: 38, board_id: 4)
pinboard39 = Pinboard.create!(pin_id: 39, board_id: 4)
pinboard40 = Pinboard.create!(pin_id: 40, board_id: 4)
pinboard41 = Pinboard.create!(pin_id: 41, board_id: 4)
pinboard42 = Pinboard.create!(pin_id: 42, board_id: 4)
pinboard43 = Pinboard.create!(pin_id: 43, board_id: 4)


pinboard44 = Pinboard.create!(pin_id: 44, board_id: 5)
pinboard45 = Pinboard.create!(pin_id: 45, board_id: 5)
pinboard46 = Pinboard.create!(pin_id: 46, board_id: 5)
pinboard47 = Pinboard.create!(pin_id: 47, board_id: 5)
pinboard48 = Pinboard.create!(pin_id: 48, board_id: 5)
pinboard49 = Pinboard.create!(pin_id: 49, board_id: 5)
pinboard50 = Pinboard.create!(pin_id: 50, board_id: 5)
pinboard51 = Pinboard.create!(pin_id: 51, board_id: 5)


pinboard52 = Pinboard.create!(pin_id: 52, board_id: 6)
pinboard53 = Pinboard.create!(pin_id: 53, board_id: 6)
pinboard54 = Pinboard.create!(pin_id: 54, board_id: 6)
pinboard55 = Pinboard.create!(pin_id: 55, board_id: 6)
pinboard56 = Pinboard.create!(pin_id: 56, board_id: 6)


pinboard57 = Pinboard.create!(pin_id: 57, board_id: 7)
pinboard58 = Pinboard.create!(pin_id: 58, board_id: 7)
pinboard59 = Pinboard.create!(pin_id: 59, board_id: 7)
pinboard60 = Pinboard.create!(pin_id: 60, board_id: 7)
pinboard61 = Pinboard.create!(pin_id: 61, board_id: 7)
pinboard62 = Pinboard.create!(pin_id: 62, board_id: 7)


pinboard63 = Pinboard.create!(pin_id: 63, board_id: 8)
pinboard64 = Pinboard.create!(pin_id: 64, board_id: 8)
pinboard65 = Pinboard.create!(pin_id: 65, board_id: 8)
pinboard66 = Pinboard.create!(pin_id: 66, board_id: 8)
pinboard67 = Pinboard.create!(pin_id: 67, board_id: 8)

pinboard68 = Pinboard.create!(pin_id: 68, board_id: 9)
pinboard69 = Pinboard.create!(pin_id: 69, board_id: 9)
pinboard70 = Pinboard.create!(pin_id: 70, board_id: 9)
pinboard71 = Pinboard.create!(pin_id: 71, board_id: 9)
pinboard72 = Pinboard.create!(pin_id: 72, board_id: 9)
