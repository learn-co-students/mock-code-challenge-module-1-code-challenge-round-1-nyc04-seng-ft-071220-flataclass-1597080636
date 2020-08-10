class Student
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name
        @@all << self
    end

    def self.all
        @@all
    end

    def courses #returns an array of all the Course instances for the Student
        Course.all.select do |course|
            course.student == self
        end
    end

    def tutors #returns an array of all of the Tutor instances that are tutoring the Student
        Tutor.all.select do |tutor|
            tutor.student == self
        end
    end

end
