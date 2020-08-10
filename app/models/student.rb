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
        Course.all.select{|course_info|course_info.student==self}
    end

    def tutors
        self.courses.map{|course_info|course_info.tutor}
    end

    def enrolled_fulltime?
        student_courses = courses.count{|course_info|course_info.student==self}
        if student_courses >= 3
            true
        else
            false
        end
    end
end
