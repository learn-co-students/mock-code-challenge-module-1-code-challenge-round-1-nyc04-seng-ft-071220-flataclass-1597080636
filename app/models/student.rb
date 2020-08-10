class Student

    attr_accessor :name

    @@all = []

    def initialize(name_par)
        @name = name_par
        @all << self

    def self.all
        @@all
    end

    def courses 
        Course.all.
    end

    def tutors 
        Tutor.all.
    end

    def enrolled_fulltime
        Student.all
    end
end

