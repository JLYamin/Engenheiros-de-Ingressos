# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :name => 'Luthi bate no velho da Havan', :cpf => '123.987.456-88' , :email => 'luthi@gmail.com', :password => 'aaa123', :password_confirmation => 'aaa123'
