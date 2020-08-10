class Tutor
    
    attr_accessor :tutor_name, :student, :course# using attr_accessor => name can be changed after the Tutor is initialized

    @@all = []

    def initialize(tutor_name)# Tutor is initialized with a name (string)
        @tutor_name = tutor_name# returns the Tutor's name
        @@all << self
    end

    def self.all
        @@all# returns an array of all the Tutor instances that have been initialized
    end

    def courses
        Course.all.select { |course| course.tutor == self}
    end

    def students
        Student.all.select { |student| student.tutor == self}
    end

    def tutored_student?(student)
        self.students.includes?(student)
    end


end


# Tutor#courses
# returns an array of Course instances associated with the Tutor instance.
# Tutor#students
# returns an array of Student instances tutored by the Tutor instance.
