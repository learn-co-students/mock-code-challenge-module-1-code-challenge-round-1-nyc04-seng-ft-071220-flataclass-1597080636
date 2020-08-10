class Tutor

    attr_accessor :name

    @@all = []

    def initialize(name_param)
        @name = name_param 
        @@all << self
    end

    def self.all 
        @@all 
    end

    def courses
        Course.all.select { |course| course.tutor == self }
    end

    def students
        students_inst_array = self.courses.map { |course| course.student }
        students_inst_array.uniq
    end

    



end
