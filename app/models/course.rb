class Course

    attr_accessor :tutor, :student, :course_name# Course#initialize(tutor, student, course_name)

    @@all = []

    def initialize(tutor, student, course_name)# Course is initialized with a Tutor instance, a Student instance, and a course_name (string)
        @tutor = tutor
        @student = student
        @course_name = course_name# returns the course_name for the Course instance
        @@all << self
    end

    def self.all# returns an array of all initialized Course instances
        @@all
    end

end