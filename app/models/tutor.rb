require 'pry'

class Tutor
  
    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def courses
        Course.all.select {|course_arr| course_arr.tutor_inst == self}
    end
 
    def students
        courses.map {|course_arr| course_arr.student_inst}
    end

    # helper method for tutored_student?
    def is_a_student(student)
        Course.all.find {|course_arr| course_arr.student_inst == student && course_arr.tutor_inst == self}
    end

    def tutored_student?(student)
       
        found_student=is_a_student(student)

        if found_student
            true 
        else
            false
        end

    end

end
