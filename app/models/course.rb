class Course
    attr_accessor :tutor, :student, :course_name
    @@all = []

    def initialize(tutor, student, course_name)     #`Course`is initialized with a `Tutor` instance, a   
        @tutor = tutor                              #  `Student`instance, and a course_name (string)
        @student = student           
        @course_name = course_name                  #`Course#course_name`returns course_name for `Course` instance             
        @@all << self
    end 
    def self.all                                    #`Course.all`returns array of all initialized `Course` instances
        @@all
    end 

    #Object Relationship Methods
    
end
