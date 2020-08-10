require 'pry'

class Student

    attr_accessor 
    attr_reader :name

 @@all = []
     def initialize(student_name)
      @name = student_name
      @@all << self
     binding.pry
     end

     def name
        @name
     end

      def self 
        @@all 
      end 
     
#  students name can be changed , i wnt or/t the students name to alice
# so i resiggned to alice . darn i know how to do this nothing is coming to me head i will kick
#  myself later










end
binding.pry 
puts "done"

## Deliverables


# #### Student
# Deliverables use the notation `#` for instance methods, and `.` for class methods.
# -X `Student#initialize(name)`
#   - `Student` is initialized with a name (string)
#   - name **can be** changed after the `Student` is initialized
# - `Student#name`
#   - returns the `Student`'s name
# - `Student.all`
#   - returns an array of all the `Student` instances that have been initialized
