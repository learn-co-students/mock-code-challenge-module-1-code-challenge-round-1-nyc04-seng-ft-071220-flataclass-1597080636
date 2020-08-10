class Student

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
        Course.all.select { |course| course.student == self }
    end

    def tutors
        tutor_inst_array = self.courses.map { |course| course.tutor }
        tutor_inst_array.uniq
    end

    def enrolled_fulltime?
        self.courses.count >= 3
    end

end
