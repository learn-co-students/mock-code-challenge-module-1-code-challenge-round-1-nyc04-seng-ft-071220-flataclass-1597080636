require 'pry'

class Student

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
        Course.all.select {|course_arr| course_arr.student_inst == self}
    end

    def tutors
        courses.map {|course_arr| course_arr.tutor_inst}
    end

    def enrolled_count
        student_courses=Course.all.select {|course_arr| course_arr.student_inst == self}
        student_courses.count
    end

    def enrolled_fulltime?
        if enrolled_count >=3
            true
        else
            false
        end
    end
end
