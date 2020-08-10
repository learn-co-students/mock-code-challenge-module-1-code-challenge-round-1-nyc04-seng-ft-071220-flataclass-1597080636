class Tutor
    attr_accessor :name

    @@all = []

    def initialize(name_par)
        @name = name_par
        @all << self

    def self.all
        @@all
    end

    def courses
        Course.all.select {|course| course.tutor == self}
    end

    def students
        Course.all.select {|student| student.tutor == self}
    end

    def tutored_student(student)
        
    end
end
