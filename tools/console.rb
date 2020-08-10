# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Students(name_par)
student1 = Student.new("Bob")
student2 = Student.new("Sally")
student3 = Student.new("Tilly")
student4 = Student.new("Anne")

#Tutors(name_par)
tutor1 = Tutor.new("Harry")
tutor2 = Tutor.new("Michael")
tutor3 = Tutor.new("Nancy")
tutor4 = Tutor.new("Lily")

#Courses(tutor_instance, student_instance, course_name)
course1 = Course.new(tutor1, student1, "Math 101")
course2 = Course.new(tutor2, student2, "English 103")
course3 = Course.new(tutor3, student3, "History 204")
course4 = Course.new(tutor3, student2, "History 101")
course5 = Course.new(tutor3, student1, "History 501")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
