# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all

10.times do |number|
	Book.create! [
		{name: "#{number.to_s} name", author: "#{number.to_s} author"}
	]
end

eloquent = Book.find_by name: "0 name"
10.times do |number|
	eloquent.notes.create! [
		{title: "#{number.to_s} note", note: "this is the note number #{number.to_s}"}
	]
end