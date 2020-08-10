class Course

    attr_accessor :tutor, :student, :course_name

    @@all = []

    def initialize(tutor_param_inst, student_param_inst, course_name_str)
        @tutor = tutor_param_inst
        @student = student_param_inst
        @course_name = course_name_str
        @@all << self 
    end

    def self.all 
        @@all 
    end

end



### p a s s e d
# - `Course#initialize(tutor, student, course_name)`
#   - `Course` is initialized with a `Tutor` instance, a `Student` instance, and a course_name (string)
# - `Course#course_name`
#   - returns the course_name for the `Course` instance
# - `Course.all`
#   - returns an array of all initialized `Course` instances
# - `Course#tutor`
#   - returns the `Tutor` instance associated with the `Course` instance
# - `Course#student`
#   - returns the `Student` instance associated with the `Course` instance