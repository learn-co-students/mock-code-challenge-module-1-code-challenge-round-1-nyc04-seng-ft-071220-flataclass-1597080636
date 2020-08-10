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

    def tutored_student?(student)
    end

    def enrolled_fulltime?
        if 
        end
    end

end
