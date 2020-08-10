# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

student1 = Student.new("Bella")
student2 = Student.new("Brian")
tutor1 = Tutor.new("Sylwia")
tutor2 = Tutor.new("Eric")
course1 = Course.new(student1, tutor1, "Science")



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
