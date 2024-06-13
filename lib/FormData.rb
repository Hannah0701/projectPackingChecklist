class FormData
    attr_accessor :destination, :num_people, :people, :name, :age, :holiday_type, :duration

    def initialize(destination, num_people, people, name, age, holiday_type, duration)
        @destination = destination
        @num_people = num_people
        @people = people
        @name = name
        @age = age
        @holiday_type = holiday_type
        @duration = duration
    end
end
