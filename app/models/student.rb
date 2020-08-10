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

    #### Student

# - `Student#enrolled_fulltime?`
# - returns `true` if the `Student` has enrolled for at least 3 Courses, returns `false` otherwise






