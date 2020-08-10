class Tutor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def courses #returns an array of Course instances associated with the Tutor instance
        Course.all.select do |course|
            course.tutor == self
        end
    end

    def students #returns an array of Student instances tutored by the Tutor instance
        Student.all.select do |student|
            student.tutor == self
        end
    end

    def tutored_student?(student)  #returns true if the Tutor has tutored this Student 
        Course.all.select do |course| #(if there is a Course instance that has this Tutor and Student), returns false otherwise
            course.tutor && course.student
        end
    end

    def enrolled_fulltime?    #returns true if the Student has enrolled for at least 3 Courses, returns false otherwise
        Student.all.find do |student|
            student.course == 3
        end
    end

end
