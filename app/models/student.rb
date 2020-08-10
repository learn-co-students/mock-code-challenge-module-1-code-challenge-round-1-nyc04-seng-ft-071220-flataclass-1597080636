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
        Course.all.select do |course|
            course.student == self
        end
    end 

    def tutors
        courses.map(&:tutor).uniq
    end 

    def enrolled_fulltime?
        if courses.count >= 3
            true
        else
            false
        end

    end 

end 

   





