class Student

    attr_accessor :name

    @@all = []

    def initialize(name_par)
        @name = name_par
        @@all << self
    end

    def self.all
        @@all
    end

    def courses
        Course.all.select do |course_instance|
            course_instance.student == self
        end
    end

    def tutors
        self.courses.map do |course_instance|
            course_instance.tutor
        end
    end

end

#Need to do:


#DONE:
# - `Student#courses`
#   - returns an array of all the `Course` instances for the `Student`.
# - `Student#tutors`
#   - returns an array of all of the `Tutor` instances that are tutoring the `Student`.