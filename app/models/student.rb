class Student

    attr_accessor :name             #name can be changed
    @@all = []

    def initialize(name)            #`Student` is initialized with a name (string)
        @name = name                #`Student#name` returns the `Student`'s name
        @@all << self
    end
    def self.all                    #`Student.all` returns array of all `Student` instances
        @@all
    end 

    #Object Relationship Methods
    def courses
    end
    def tutors
    end 
end
