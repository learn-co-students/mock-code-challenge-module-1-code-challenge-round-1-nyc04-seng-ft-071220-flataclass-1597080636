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
        Course.all.select{|course| course.student == self}
    end

    def tutors
        tutors_helper.map{|course| course.tutor}
    end

    def tutors_helper
        courses.uniq{|course| course.tutor}
    end

    def enrolled_fulltime?
        courses.count >= 3
    end

end
