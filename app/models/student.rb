require 'pry'

class Student
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def courses
        Student.all.select { |course| course.student == self }
    end

    def tutors
        Student.all.select { |tutor| tutor.student == self }
    end

    #First look at all students, then select the ones that have 3 or more courses
    def enrolled_fulltime?
        courses.select { |student| course >= 3}
    end
end
