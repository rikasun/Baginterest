# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user0 = User.create({ email: 'demo@gmail.com', age: 25, password: 'demo25', username: 'demo'})
user1 = User.create({ email: 'alice@gmail.com', age: 25, password: 'alice25'})
user2 = User.create({ email: 'bob@gmail.com', age: 100, password: 'bob100'})
user3 = User.create({ email: 'carly@gmail.com', age: 26, password: 'carly26'})
user4 = User.create({ email: 'danny@gmail.com', age: 27, password: 'danny27'})
user5 = User.create({ email: 'eric@gmail.com', age: 31, password: 'eric31'})
