class Course

# - `Course#initialize(tutor, student, course_name)`
# - `Course` is initialized with a `Tutor` instance, a `Student` instance, and a course_name (string)
# - `Course#course_name`
# - returns the course_name for the `Course` instance
# - `Course.all`
# - returns an array of all initialized `Course` instances

@@all = []

attr_accessor :tutor, :student, :course_name
    def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = course_name
        @@all << self
    end

    def self.all
        @@all
    end

    
# - `Course#tutor`
# - returns the `Tutor` instance associated with the `Course` instance
# - `Course#student`
# - returns the `Student` instance associated with the `Course` instance


end

