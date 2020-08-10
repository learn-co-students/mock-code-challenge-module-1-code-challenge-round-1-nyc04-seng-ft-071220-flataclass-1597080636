class Student

    attr_accessor :student_name, :tutor, :course# using attr_accessor => name can be changed after the Student is initialized

    @@all = []

    def initialize(student_name)# Student is initialized with a name (string)
        @student_name = student_name# returns the Student's name
        @@all << self
    end

    def self.all# returns an array of all the Student instances that have been initialized
        @@all
    end

    def courses
        Course.all.select { |course| course.student }# returns an array of all the Course instances for the Student.
    end

    def tutors
        Tutor.all.select { |tutor| tutor.student }# returns an array of all of the Tutor instances that are tutoring the Student.
    end

    def enrolled_fulltime?
        return true if self.courses > 3
    end

end

