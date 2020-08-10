class Tutor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def courses
        Course.all.select{|course_info|course_info.tutor==self}
    end

    def students
        self.courses.map{|course_info|course_info.student}
    end

    def self.all
        @@all
    end

    def tutored_student?(student)
        students.include?(student)
    end
end
