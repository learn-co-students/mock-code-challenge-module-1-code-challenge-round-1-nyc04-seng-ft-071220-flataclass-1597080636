class Course

    attr_accessor :course_name, :tutor, :student
    
    @@all = []

    def initialize(tutor_inst, student_inst, course_name)
    @tutor = tutor_inst
    @student = student_inst
    @course_name = course_name
    @@all << self
    end

    def self.all
      @@all
    end

# `Course#tutor`
#   - returns the `Tutor` instance associated with the `Course` instance
    def tutor
       self.tutor
    end


# - `Course#student`
#   - returns the `Student` instance associated with the `Course` instance
    def student
        self.student
    end

end





