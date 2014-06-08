# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: 'test@example.com', password: '12345678', password_confirmation: '12345678')
category = user.categories.create(title: 'Courses I would wish to pass', noun: 'Courses', verb: 'pass')
wish = category.wishes.create(title: 'Edx.org SaaS', start: '18/04/14', finish: '11/06/14', body: 'CS169.1.x course about ruby and rails')
wish.steps.create([{title: 'HW0', start: '19/04/14', finish: '30/04/14'}, {title: 'HW1', start: '2/05/14', finish: '10/05/14'}])