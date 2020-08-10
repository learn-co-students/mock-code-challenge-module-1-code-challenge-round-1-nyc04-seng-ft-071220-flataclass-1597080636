# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#name string
student1 = Student.new("Alan")
student2 = Student.new("Bobby")
student3 = Student.new("Carol")
student4 = Student.new("Dana")

#name string
tutor1 = Tutor.new("Ms. E")
tutor2 = Tutor.new("Mr. F")
tutor3 = Tutor.new("Ms. G")
tutor4 = Tutor.new("Mr. H")

#course_name: "Algebra"
#course_name: "Botany"
#course_name: "Calculus"
#course_name: "Dark Arts"

#tutor, student, name
course1 = Course.new("Ms. E", "Alan", "Algebra")
course2 = Course.new("Mr. F", "Bobby", "Botany")
course3 = Course.new("Ms. G", "Carol", "Calculus")
course4 = Course.new("Mr. H", "Dana", "Dark Arts")

course1.tutor

course2.student




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
