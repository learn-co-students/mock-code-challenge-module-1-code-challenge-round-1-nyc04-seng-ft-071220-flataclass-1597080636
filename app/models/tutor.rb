require 'pry'

class Tutor

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_courses
      Course.all.select do |each_course|
            # binding.pry
           each_course.tutor == self
        end
    end

    def all_students
        self.all_courses.map do |each_course|
            each_course.student
        end 
    end

    def tutored_student?(student)
        self.all_students.find do |each_student|
            if student == each_student
                return true 
            else
                return false
            end
        end
    end


end


