# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# `Student`
alice = Student.new("Sucessful",a)
hope = Student.new("Failure", c)
mary = Student.new("Passed",b)

Student.course.tudor("Bio")
# i want to r/t a student with a course of that name .. syntax is way wrong 
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# `Tutor`
 mr.simon = Tudor.new ("Art")
 ms.cooks = Tudor.new ("Bio")
 mr.kicks = Tudor.new ("English")






#  i need to link them together to test !
#  student.tudor.select


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
