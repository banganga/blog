# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless User.where(:id => 1).exists?
  admin_password = "stone32"
  user = User.new(
    email: "admin@example.com",
    password: admin_password,
    password_confirmation: admin_password
  )
  user.id = 1
  user.save!
  puts "Admin user created: #{user.email} / #{admin_password}"
end
