# We have three classes: `Student`, `Tutor`, and `Course`.

# A `Student` has many `Course`s. 
# A `Tutor` has many `Course`s. 
# A `Course` belongs to a `Tutor` and belongs to a `Student`.

# `Student` - `Tutor` is a many to many relationship.

#### Tutor

# - `Tutor#courses`
#   - returns an array of `Course` instances associated with the `Tutor` instance.
# - `Tutor#students`
#   - returns an array of `Student` instances tutored by the `Tutor` instance.

####################################################################################

## Deliverables

# Write the following methods in the classes in the files provided. 
# Feel free to build out any helper methods if needed.

# Deliverables use the notation `#` for instance methods, and `.` for class methods.

# Some of the methods listed are provided to you in the starter code. 
# You should check that they work correctly, and that you understand them.

####################################################################################

# #### Tutor

# - `Tutor#initialize(name)`
#       - `Tutor` is initialized with a name (string)
#       - name **can be** changed after the Tutor is initialized
# - `Tutor#name`
#       - returns the Tutor's name
# - `Tutor.all`
#       - returns an array of all the `Tutor` instances that have been initialized

class Tutor

    attr_accessor :name #name must be a string!
    @@all = []

    def initialize(name) #name must be a string!
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

#### Tutor

# - `Tutor#courses`
#   - returns an array of `Course` instances associated with the `Tutor` instance.

    def self.courses
        Course.all.select {|course| course.tutor == self}
    end

# - `Tutor#students`
#   - returns an array of `Student` instances tutored by the `Tutor` instance.

    def self.students
        Student.all.select {|student| student.tutor == self}
    end

### Aggregate and Association Methods (must call on other class(es))

#### Tutor

# - `Tutor#tutored_student?(student)`
#   - a `Student` instance is the only argument
#   - returns `true` if the `Tutor` has tutored this `Student` 
#   (if there is a `Course` instance that has this `Tutor` and `Student`), 
# returns `false` otherwise

    def self.tutored_student?(student)
        if Student.all.select {|student| student.tutor = self}
            true
        else
            false
        end
    end


end
