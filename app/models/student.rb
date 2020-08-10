class Student

    @@all = []

    attr_accessor :name
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_courses
        Course.all.select do |each_course|
              # binding.pry
             each_course.student == self
          end
      end

    def all_tutors
       self.all_courses.map do |each_course|
            each_course.tutor
        end
    end

    def enrolled_fulltime?
        if self.all_courses.count > 3
            return true
        else
            return false 
        end
    end

end
