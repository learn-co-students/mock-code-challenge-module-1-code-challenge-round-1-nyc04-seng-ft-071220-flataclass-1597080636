# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mark = Student.new("Mark")
jade = Student.new("Jade")
lisa = Student.new("Lisa")
lida = Student.new("lida")

drake = Tutor.new("Drake")
marcus = Tutor.new("Marcus")
alexis = Tutor.new("Alexis")

rap101 = Course.new(drake, jade, "rap101")
history = Course.new(marcus, lida, "History")
math = Course.new(alexis, jade, "Math")
arts = Course.new(drake, lisa, "Arts")
chem = Course.new(alexis, jade, "Chemistry")

Tutor.all 
Student.all 
chem.name
drake.tutored_student?(jade)
jade.enrolled_fulltime?
lisa.enrolled_fulltime?

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
