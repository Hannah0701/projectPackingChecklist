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

type = gets.chomp


puts "Duration (in days): "
duration = gets.chomp.to_i

# Generate packing checklist
packing_list = []

packing_list << "Clothes for #{duration} days"
packing_list << "Toiletries"
packing_list << "Medications"
packing_list << "Passports and travel documents"
packing_list << "Electronics (chargers, adapters, etc.)"
packing_list << "Money and credit cards"
packing_list << "Snacks and drinks for the journey"
packing_list << "Entertainment (books, games, etc.)"

if type == "Beach / resort holiday"
    packing_list << "Swimsuits"
    packing_list << "Beach towels"
    packing_list << "Sunscreen"
elsif type == "Adventure holiday"
    packing_list << "Hiking boots"
    packing_list << "Warm clothing"
    packing_list << "Trekking poles"
elsif type == "Camping holiday"
    packing_list << "Tent"
    packing_list << "Tent poles"
    packing_list << "Sleeping bag"
    packing_list << "Hiking boots"
    packing_list << "Warm clothing"
    packing_list << "Trekking poles"
elsif type == "City break"
    packing_list << "Smart dress"
elsif type == "Travel around multiple destinations"
    packing_list << "Swimsuits"
    packing_list << "Beach towels"
    packing_list << "Sunscreen"
    packing_list << "Hiking boots"
    packing_list << "Warm clothing"
    packing_list << "Smart dress"
end

packing_list << "Other miscellaneous items"

# Display packing checklist
# puts "\nHere's your packing checklist for the holiday to #{destination}:"
# packing_list.each_with_index do |item, index|
#     puts "#{index + 1}. #{item}"
# end

# Use name and age variables to create individual packing lists to display
puts "\nHere's the individual packing list for each person for the holiday to #{destination}:"
(1..num_people).each do |num|
    puts "\n#{people[num-1][:name]}'s Packing List:"
    packing_list.each_with_index do |item, index|
        puts "#{index + 1}. #{item}"
    end
end

# End of program
puts "\nHave a great holiday!"