# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Start loading categories..."
categories_yml = File.join(Rails.root, 'db', 'seeds', 'categories.yml')
YAML::load_file(categories_yml).each do |category|
  Category.where(
    name: category['name'],
    description: category['description']
  ).first_or_create
end
puts "Done loading categories. #{Category.count} total."
