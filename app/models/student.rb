class Student

    attr_accessor :name
    
    @@all = []

    def initialize(name_arg)
        @name = name_arg
        @@all << self
    end

    def self.all
        @@all
    end

#   `Student#courses`
#   - returns an array of all the `Course` instances for the `Student`.
    def courses
        Course.all.select {|course| course.student == self}
    end

# - `Student#tutors`
#   - returns an array of all of the `Tutor` instances that are tutoring the `Student`.
    def tutors
        courses.map {|course| course.tutor}
    end

#   `Student#enrolled_fulltime?`
#    - returns `true` if the `Student` has enrolled for at least 3 Courses, returns `false` otherwise
    def enrolled_fulltime?
        if courses.length > 2
            return true
        else false
        end
    end
end






