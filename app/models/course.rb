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

    def self.tutor 
        Course.tutor == self
    end 

    def self.student
        self.student == self
    end 

end

