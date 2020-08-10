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

    def courses
        Course.all.select{|course| course.tutor == self}
    end

    def students
        students_helper.map{|course| course.student}
    end

    def students_helper
        courses.uniq{|course| course.student}
    end

    def tutored_student?(student)
        students.any?{|tutored_student| tutored_student.name == student }
    end
end
