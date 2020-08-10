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
        self.courses.map(&:student)
    end

    def tutored_student?(student)
        self.students.include?(student)
    end



end
