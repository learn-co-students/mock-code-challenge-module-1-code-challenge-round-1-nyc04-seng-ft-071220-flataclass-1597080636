class Course
    attr_accessor :tutor, :student, :course_name

    @@all = []

    def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = course_name
        @@all << self
    end

    def self.all
        @@all
    end

    def tutor #returns the Tutor instance associated with the Course instance
        tutor.course
    end

    def student #returns the Student instance associated with the Course instance
        student.course
    end

end
