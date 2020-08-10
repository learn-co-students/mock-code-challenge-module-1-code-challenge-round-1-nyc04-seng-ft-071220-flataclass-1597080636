class Student
    @@all = []
    attr_accessor :name
    attr_reader 

    def initialize (name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    # def enrolled_fulltime?
    #     count = 0
    #    @@all_course.each{|course |
    #     course.name == self 
    #      count += 1
    # }
    #     if count > 2 
    #         true
    #     else false
    #     end
    # end

    # def courses
    # end

end
