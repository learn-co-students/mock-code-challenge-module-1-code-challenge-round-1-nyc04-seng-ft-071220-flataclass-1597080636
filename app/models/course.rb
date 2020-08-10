require 'pry'

    class Course
        @@all = []
        attr_accessor :student, :course_name
 
    def initialize(student, course_name) 
        @student = student
        @course_name = course_name
        @@all << self
    end

    def self 
        @@all 
    end  
#   this is r/t 

    def course_name(tudor, student)
  tudor.all.select do "#{@study}"
  end
    end 
#  i want to r/t  course names of course instance  which is course name would "art"

#     this is the joiner/link for tudor and student !

#   returns the course name for the course instance  
    # def tudor = course.select. do |name_course| 
    #  name_course.tudor == self
    # end 

#  i have to connect with all of the class via course .. if my binding .pry would work!
end
 binding.pry 
puts "done"

#### Course

# - X`Course#initialize(tutor, student, course_name)`
#   - `Course` is initialized with a `Tutor` instance, a `Student` instance, and a course_name (string)
# - `Course#course_name`
#   - returns the course_name for the `Course` instance
# - `Course.all`
#   - returns an array of all initialized `Course` instances

#### Course

# - `Course#tutor`
#   - returns the `Tutor` instance associated with the `Course` instance
# - `Course#student`
#   - returns the `Student` instance associated with the `Course` instance
 
