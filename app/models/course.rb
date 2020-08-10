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
        Tutor.all.select {|tutor| tutor.course == self}
        binding.pry
    end

    # def student
    #     Student.all.select {|student| student.course == self}
    # end
end
