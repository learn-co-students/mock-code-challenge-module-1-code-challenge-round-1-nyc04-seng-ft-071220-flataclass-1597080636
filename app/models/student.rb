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

# - `Student#initialize(name)`
#       - `Student` is initialized with a name (string)
#       - name **can be** changed after the `Student` is initialized
# - `Student#name`
#       - returns the `Student`'s name
# - `Student.all`
#       - returns an array of all the `Student` instances that have been initialized

class Student

    attr_accessor :name #name must be a string!
    @@all = []

    def initialize(name) #name must be a string!
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

#### Student

# - `Student#courses`
#       - returns an array of all the `Course` instances for the `Student`.

    def self.courses
        self.course.map(&:course)
    end

# - `Student#tutors`
#       - returns an array of all of the `Tutor` instances that are tutoring the `Student`.

    def self.tutors
        self.tutor.map(&:tutor)
    end

#### Aggregate and Association Methods (must call on other class(es)?)

#### Student

# - `Student#enrolled_fulltime?`
#    - returns `true` if the `Student` has enrolled for at least 3 Courses, returns `false` otherwise

    def self.enrolled_fulltime?
        if self.course.count >= 3
            true
        else
            false
        end
    end

end

#if self.all.select {|student| student.course.count >= 3}
# true
# else
#     false
# end
