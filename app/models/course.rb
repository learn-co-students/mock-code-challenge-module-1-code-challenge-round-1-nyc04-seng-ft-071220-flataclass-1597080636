class Course

    attr_accessor :tutor, :student, :course_name 

    @@all = []

    def initialize(tutor_param, student_param, course_name_param)
        @tutor = tutor_param
        @student = student_param
        @course_name = course_name_param
    end

    def self.all 
        @@all 
    end
    

end
