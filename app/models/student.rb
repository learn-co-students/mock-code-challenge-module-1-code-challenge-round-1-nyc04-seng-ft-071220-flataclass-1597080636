class Student
# - `Student#initialize(name)`
# - `Student` is initialized with a name (string)
# - name **can be** changed after the `Student` is initialized
# - `Student#name`
# - returns the `Student`'s name
# - `Student.all`
# - returns an array of all the `Student` instances that have been initialized

attr_accessor :student_name

@@all = []

    def initialize(student_name)
        @student_name= student_name
        @@all << self
    end

    def self.all
        @@all
    end

    def course
        Course.all
        # - `Student#courses`
        # - returns an array of all the `Course` instances for the `Student`.
    end

    def tutor
        # - `Student#tutors`
        Tutor.all
        # - returns an array of all of the `Tutor` instances that are tutoring the `Student`.
    end

    def enrolled_fulltime
        # - `Student#enrolled_fulltime?`
        # - returns `true` if the `Student` has enrolled for at least 3 Courses, returns `false` otherwise
    end



end
