class Course

    attr_accessor :name, :student, :tutor

    @@all = []

    def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = name
        @@all << self
    end

    def self.all
        @@all
    end

end
