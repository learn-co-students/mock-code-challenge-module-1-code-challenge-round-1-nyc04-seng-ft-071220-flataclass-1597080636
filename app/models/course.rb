require 'pry'

class Course

    attr_accessor :tutor_inst, :student_inst, :course_name

    @@all=[]

    def initialize(tutor_inst,student_inst,course_name)
        @tutor_inst=tutor_inst
        @student_inst=student_inst
        @course_name=course_name
        @@all << self
    end

    def self.all
        @@all
    end

    # Put in the deliverables but the macro does it
    # def course_name_method
    #     self.course_name
    # end
    
    # Helper method:
    def finding_instance
        Course.all.select {|course_arr| course_arr == self}
    end
    
    def tutor
        finding_instance.map {|course_arr| course_arr.tutor_inst}
    end

    def student 
        finding_instance.map {|course_arr| course_arr.student_inst}
    end

end
