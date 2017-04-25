# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '建立一个账号'
u = User.new
u.email = 'admin@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.is_admin = true
u.save

puts '建立40个course'

Course_demo = [["title1","description1"],["title2","description2"],["title3","description3"],["title4","description4"],["title5","description5"]]

create_courses = for i in 1..40 do
courses_test=Course_demo[rand(0..4)]
Course.create!([title:courses_test[0],description:courses_test[1]])
end
