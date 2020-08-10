class Student

    attr_accessor :student_name# using attr_accessor => name can be changed after the Student is initialized

    @@all = []

    def initialize(student_name)# Student is initialized with a name (string)
        @student_name = student_name# returns the Student's name
        @@all << self
    end

    def self.all# returns an array of all the Student instances that have been initialized
        @@all
    end

    def courses
        Course.all.select { |course| course.student == self }# returns an array of all the Course instances for the Student.
    end

    def tutors
        self.courses.map { |course| course.tutor }# returns an array of all of the Tutor instances that are tutoring the Student.
    end

    def enrolled_fulltime?#need to review
        return true if self.courses.count > 3
    end

end

