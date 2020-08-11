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

    #1. define the method -- courses
    #2. access Course class 
    #   - go through all courses (Course.all)
    #3. select the ones this tutor is teaching 
    
    def courses
        Course.all.select { |course| course.tutor == self }
    end

    def students 
        self.courses.map { |course| course.student }
    end

    # Student -< Course >- Tutor

    #1. define the method -- tutored_student?(student_instance)
    #2. go through all Course instances 
    #3. find all of this tutor's students
    #4. see if those students match up with the student_instance argument 

    def tutored_student?(student_instance)
        self.students.include?(student_instance)
    end

    
end





### p a s s e d
# - `Tutor#initialize(name)`
#   - `Tutor` is initialized with a name (string)
#   - name **can be** changed after the Tutor is initialized
# - `Tutor#name`
#   - returns the Tutor's name
# - `Tutor.all`
#   - returns an array of all the `Tutor` instances that have been initialized
# - `Tutor#courses`
#   - returns an array of `Course` instances associated with the `Tutor` instance.
# - `Tutor#students`
#   - returns an array of `Student` instances tutored by the `Tutor` instance.
# - `Tutor#tutored_student?(student)`
#   - a `Student` instance is the only argument
#   - returns `true` if the `Tutor` has tutored this `Student` (if there is a `Course` instance that has this `Tutor` and `Student`), returns `false` otherwise