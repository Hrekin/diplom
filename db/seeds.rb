# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# d = Department.create!(department_name: "qqq", department_number: "121")
# p  = Person.create!(last_name: "test1", first_name: "test11", birthday: Date.new(1990,01,02), email: "test01@qqmail.ru", person_phone: "1234567", department_id: "1", password: "qwerty", password_confirmation: "qwerty")
# p1  = Person.create!(last_name: "test2", first_name: "test21", birthday: Date.new(1990,01,02), email: "test2@qqmail.ru", person_phone: "12345673", department_id: "1", password: "qwerty", password_confirmation: "qwerty")
# dis = Disposition.create!(name: "Scolkovo")
# dis1 = Disposition.create!(name: "Voykovskaya")
# dis2 = Disposition.create!(name: "Socol")

for i in 1...25
	qq = i%3 
	if qq > 0 
		qq
	else
		qq = 3
	end
	Building.create!(name_building: "#{i}+#{i}", disposition_id: "#{qq}")
end