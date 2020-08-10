class Course

    @@all_course = []
    @@all_student = []
    @@all_tutors = []
    @@count = 0
    attr_accessor :course_name, :tutor, :student
    attr_reader 

    def initialize (tutor, student, name)
        @course_name = name
        @tutor = tutor
        @student = student
        @@all_course << self
        @@all_student << student
        @@all_tutors << tutor
        @@count += 1
    end


    def name
        @course_name
    end

    def self.all
        @@all_course
    end


    def tutor
        correct_array = Course.all.select {|course| 
            course.name == @course_name }
    

        correct_array.tutor
    end

    def student
        correct_array = Course.all.select {|course| 
            course.name == @course_name 
        }
    
        correct_array.student
    end
    



end
