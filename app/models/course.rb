class Course

    #my class variable for all Course instances
    @@all = []

    #this will take care of all setter and getter methods for tutor and student
    attr_accessor :student, :tutor

    #this attribute reader should take care of the #course_name method
    attr_reader :course_name
    def initialize(tutor,student,course_name)
        @course_name = course_name
        @student = student
        @tutor = tutor
        @@all << self
    end

    def self.all
        @@all
    end

end
