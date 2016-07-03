# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Member.delete_all
Member.create(name: 'ユーザー1', age: 20)
Member.create(name: 'Person2', age: 25)
Member.create(name: 'Person3', age: 30)
Member.create(name: 'Person4', age: 35)
Member.create(name: 'Person5', age: 40)
