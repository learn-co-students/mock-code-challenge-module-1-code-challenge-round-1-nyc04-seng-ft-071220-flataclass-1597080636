require 'pry'
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

    def tutor
        Course.new(student, name, self)
        binding.pry
    end

    def student
        Course.new(tutor,name, self)
    end


end
