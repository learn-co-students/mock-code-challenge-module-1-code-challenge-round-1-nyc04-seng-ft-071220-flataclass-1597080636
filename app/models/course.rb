class Course

    attr_reader :course_name
    attr_accessor :tutor, :student

    @@all = []

    def initialize(tutor_instance, student_instance, course_name)
        @tutor = tutor_instance
        @student = student_instance
        @course_name = course_name
        @@all << self
    end

    def self.all
        @@all
    end

end


#DONE:
# - `Course#tutor`
#   - returns the `Tutor` instance associated with the `Course` instance
# - `Course#student`
#   - returns the `Student` instance associated with the `Course` instance