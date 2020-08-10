class Tutor
    
    attr_accessor :tutor_name# using attr_accessor => name can be changed after the Tutor is initialized

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
        self.courses.map { |course| course.student}
    end

    def tutored_student?(student)#need to review
        self.students.include?(student)
    end


end
