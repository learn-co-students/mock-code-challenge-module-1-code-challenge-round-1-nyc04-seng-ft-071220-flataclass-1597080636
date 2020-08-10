class Tutor

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
            course_instance.tutor == self
        end
    end

    def students
        self.courses.map do |course_instance|
            course_instance.student
        end
    end

end

#Need to do:


#DONE:
# - `Tutor#courses`
#   - returns an array of `Course` instances associated with the `Tutor` instance.
# - `Tutor#students`
#   - returns an array of `Student` instances tutored by the `Tutor` instance.