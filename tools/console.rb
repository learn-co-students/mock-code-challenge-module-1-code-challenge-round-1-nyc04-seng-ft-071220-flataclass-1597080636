# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("John")
student2 = Student.new("Michael")

tutor1 = Tutor.new("Sylwia")
tutor2 = Tutor.new("Eric")

course1 = Course.new(student1, tutor1, "Ruby")
course2 = COurse.new(student2. tutor2, "JS")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
