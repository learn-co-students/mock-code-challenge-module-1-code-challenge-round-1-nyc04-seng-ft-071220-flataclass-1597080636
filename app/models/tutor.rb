class Tutor

    attr_accessor :name

    @@all = []
    
    def initialize(name_par)
        @name = name_par
        @@all << self
    end

    def self.all
        @@all
    end

    def courses
        Course.all.select do |course_instance|
            course_instance.tutor == self
        end
    end

    def students
        self.courses.map do |course_instance|
            course_instance.student
        end
    end

    def find_student(student_inst_arg)
        self.students.find do |student_instance|
            student_instance == student_inst_arg
        end
    end

    def tutored_student?(student)
        if self.find_student(student)
            true
        else
            false
        end
    end

end

#Need to do:

#DONE:
# - `Tutor#courses`
#   - returns an array of `Course` instances associated with the `Tutor` instance.
# - `Tutor#students`
#   - returns an array of `Student` instances tutored by the `Tutor` instance.
# - `Tutor#tutored_student?(student)`
#   - a `Student` instance is the only argument
#   - returns `true` if the `Tutor` has tutored this `Student` 
#       (if there is a `Course` instance that has this `Tutor` and `Student`)
#   - returns `false` otherwise

#Steps for .tutored_student?(student)
# 1.Need to (try) match the student_instance_arg with a student_instance from .students
#     .courses returns array of all courses tutor taught
#     .students returns array of all the students taught by the tutor
#    1a.Create helper method (find_student) to match passed in instance with all students
#      - use find method on self.students
# 2.If students match (if find_student is true), return true
# 3.Return false otherwise