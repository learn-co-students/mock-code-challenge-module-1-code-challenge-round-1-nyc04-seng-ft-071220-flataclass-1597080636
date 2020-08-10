class Tutor
  
    attr_accessor :name
    attr_reader :courses, :students, :tutored_student?

    @@all = []

    def initialize(name_arg)
        @name = name_arg
        @@all << self
    end

    def self.all
        @@all
    end

#   `Tutor#courses`
#   - returns an array of `Course` instances associated with the `Tutor` instance.
    def courses
        Course.all.select {|course| course.tutor == self}
    end

# - `Tutor#students`
#   - returns an array of `Student` instances tutored by the `Tutor` instance.
    def students
        courses.map {|course| course.student}
    end


#   `Tutor#tutored_student?(student)`
#   - a `Student` instance is the only argument
#   - returns `true` if the `Tutor` has tutored this `Student`
# (if there is a `Course` instance that has this `Tutor` and `Student`), returns `false` otherwise

    def tutored_student?(student_inst)
        if students.include?(student_inst)
            return true
        else false
        end
    end


end





