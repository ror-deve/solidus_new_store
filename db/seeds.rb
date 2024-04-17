# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spree::Core::Engine.load_seed
Spree::Auth::Engine.load_seed
# user = Spree::User.create!(email: "admin@gmail.com", password: "admin@123")
# role = Spree::Role.create!(name: "admin")
# user_role = Spree::RoleUser.create!(role_id:role.id user_id: user.id)

user = Spree::User.find_or_create_by(email: "admin@gmail.com") do |u|
  u.password = "admin@123"
end

role = Spree::Role.find_or_create_by(name: "admin")
Spree::RoleUser.create!(role_id: role.id, user_id: user.id)
