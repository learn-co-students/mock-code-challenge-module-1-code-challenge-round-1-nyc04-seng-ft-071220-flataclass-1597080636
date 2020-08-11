class Student

    #both getter/setter 
    attr_accessor :name

    @@all = []

    # def name
    #     @name
    # end

    # def name=(new_name)
    #     @name = new_name
    # end

    def initialize(name_param)
        @name = name_param
        @@all << self
    end

    def self.all 
        @@all 
    end

    #1. define method -- courses 
    #2. go through all Course instances 
    #3. select the ones where this Student is in it

    def courses
        Course.all.select do |course_instance|
            course_instance.student == self
        end
    end

    # Student -< Course >- Tutor

    #1. define method -- tutors 
    #2. go through all Course instances 
    #3. select the courses that this student is in 
    #4. go through all of the student's courses and return the tutor instances 

    def tutors 
        self.courses.map do |course_instance|
            course_instance.tutor
        end 
    end

    #1. define the method -- enrolled_fulltime?
    #2. go through all of the student's courses 
    #3. check how many courses there are 
    #4. if the student has 3 or more courses, return true 
    #   else return false 

    def enrolled_fulltime?
        self.courses.count >= 3
    end
    

end



### p a s s e d
# - `Student#initialize(name)`
#   - `Student` is initialized with a name (string)
#   - name **can be** changed after the `Student` is initialized
# `Student#name`
#   - returns the `Student`'s name
# - `Student.all`
#   - returns an array of all the `Student` instances that have been initialized
# - `Student#courses`
#   - returns an array of all the `Course` instances for the `Student`.
# - `Student#tutors`
#   - returns an array of all of the `Tutor` instances that are tutoring the `Student`.
# - `Student#enrolled_fulltime?`
#    - returns `true` if the `Student` has enrolled for at least 3 Courses, returns `false` otherwise


