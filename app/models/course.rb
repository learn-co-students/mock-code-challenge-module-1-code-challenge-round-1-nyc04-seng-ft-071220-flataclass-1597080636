require 'pry'

# We have three classes: `Student`, `Tutor`, and `Course`.

# A `Student` has many `Course`s. 
# A `Tutor` has many `Course`s. 
# A `Course` belongs to a `Tutor` and belongs to a `Student`.

# `Student` - `Tutor` is a many to many relationship.

####################################################################################

## Deliverables

# Write the following methods in the classes in the files provided. 
# Feel free to build out any helper methods if needed.

# Deliverables use the notation `#` for instance methods, and `.` for class methods.

# Some of the methods listed are provided to you in the starter code. 
# You should check that they work correctly, and that you understand them.

####################################################################################

# #### Course

# - `Course#initialize(tutor, student, course_name)`
#       - `Course` is initialized with a `Tutor` instance, a `Student` instance, and a course_name (string)

# - `Course#course_name`
#       - returns the course_name for the `Course` instance

# - `Course.all`
#       - returns an array of all initialized `Course` instances

class Course

    attr_accessor :tutor, :student, :course_name #course_name must be a string!
    @@all = []

    def initialize(tutor, student, course_name) #course_name must be a string!
        @tutor = tutor
        @student = student
        @course_name = course_name #course_name must be a string!
        @@all << self
    end

    def self.all
        @@all
    end

#### Course

# - `Course#tutor`
#       - returns the `Tutor` instance associated with the `Course` instance

    def self.tutor
        Tutor.all.select {|tutor| tutor.course == self}
    end

# - `Course#student`
#       - returns the `Student` instance associated with the `Course` instance

    def self.student
        Student.all.select {|student| student.course == self}
    end


end
