class Database
    attr_accessor :form_database

    def initialize
        @form_database = []
    end

    def display_form_database
        @form_database.each do |form_data|
            puts "Destination: #{form_data.destination}"
            puts "Number of people: #{form_data.num_people}"
            (1..num_people).each do |i|
                puts "Name: #{form_data.people[i][name]}"
                puts "Age: #{form_data.people[i][age]}"
            end
            puts "Holiday type: #{form_data.holiday_type}"
            puts "Duration: #{form_data.duration}"
            puts "------------------------"
        end
    end
end