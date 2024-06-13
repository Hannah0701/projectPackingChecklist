require_relative './FormData'
require_relative './Database'
require_relative './PackingListGenerator'

# User interface
database = Database.new

# Get user input
puts "Welcome to my Holiday Packing Checklist Generator!"
puts "Please enter the details of your holiday:"

puts "Destination: "
destination = gets.chomp

puts "Number of people: "
num_people = gets.chomp.to_i

people = []

(1..num_people).each do |person|
    puts "Details of person #{person}:"
    puts "Name: "
    name = gets.chomp
    puts "Age: "
    age = gets.chomp.to_i
    people << {name: name, age: age}
    puts "Person #{person} added!"
end

puts "Type of holiday: "

types = ["Beach / resort holiday", "Adventure holiday", "Camping holiday", "City break", "Travel around multiple destinations"]

types.each do |type|
    puts "#{type}"
end

holiday_type = gets.chomp

puts "Duration (in days): "
duration = gets.chomp.to_i

# Generate packing checklist in sections (need to create error handling for nil nil class)
packing_list = {"Important" => [], "Clothing" => [], "Personal care" => [], "Electronics" => [], "Food" => [], "Entertainment" => [], "Miscellaneous" => []}

packing_list["Clothing"] << "Clothes for #{duration} days"
packing_list["Personal care"] << "Toiletries"
packing_list["Personal care"] << "Medications"
packing_list["Important"] << "Passports and travel documents"
packing_list["Electronics"] << "Electronics (chargers, adapters, etc.)"
packing_list["Important"] << "Money and credit cards"
packing_list["Food"] << "Snacks and drinks for the journey"
packing_list["Entertainment"] << "Entertainment (books, games, etc.)"

if holiday_type == "Beach / resort holiday"
    packing_list["Clothing"] << "Swimsuits"
    packing_list["Personal care"] << "Beach towels"
    packing_list["Personal care"] << "Sunscreen"
elsif holiday_type == "Adventure holiday"
    packing_list["Clothing"] << "Hiking boots"
    packing_list["Clothing"] << "Warm clothing"
    packing_list["Important"] << "Trekking poles"
elsif holiday_type == "Camping holiday"
    packing_list["Important"] << "Tent"
    packing_list["Important"] << "Tent poles"
    packing_list["Important"] << "Sleeping bag"
    packing_list["Clothing"] << "Hiking boots"
    packing_list["Clothing"] << "Warm clothing"
    packing_list["Clothing"] << "Trekking poles"
elsif holiday_type == "City break"
    packing_list["Clothing"] << "Smart dress"
elsif holiday_type == "Travel around multiple destinations"
    packing_list["Clothing"] << "Swimsuits"
    packing_list["Personal care"] << "Beach towels"
    packing_list["Personal care"] << "Sunscreen"
    packing_list["Clothing"] << "Hiking boots"
    packing_list["Clothing"] << "Warm clothing"
    packing_list["Clothing"] << "Smart dress"
end

packing_list["Miscellaneous"] << "Other miscellaneous items"

# Use name and age variables to create individual packing lists to display
puts "\nHere's the individual packing list for each person for the holiday to #{destination}:"
(1..num_people).each do |num|
    puts "\n#{people[num-1][:name]}'s Packing List:"

    # Loop based on the number of keys in the packing_list hash
    packing_list.keys.each do |category|
        puts "\n #{category}:"
        packing_list[category].each do |item|
            puts "- #{item}"
        end
    end
end

# End of program
puts "\nHave a great holiday!"


database.display_form_database