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
        self.Course.all
    end

    def students #returns an array of Student instances tutored by the Tutor instance
        self.Student.all
    end

    def tutored_student?(student)
    end

    def enrolled_fulltime?
        if 
        end
    end

end
