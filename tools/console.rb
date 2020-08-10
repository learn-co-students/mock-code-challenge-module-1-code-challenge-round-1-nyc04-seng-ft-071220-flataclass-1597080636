# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# student --<  course >--  tutor
#===============================================================

# tutors=============================
Kevin = Tutor.new("Kevin")
Jason = Tutor.new("Jason")
Lily = Tutor.new("Lily")
Jack = Tutor.new("Jack")

# students=============================
Emily = Student.new("Emily")
Eric = Student.new("Eric")
Kelly = Student.new("Kelly")
Ruby =Student.new("Ruby")

# Course================================
Math_1 = Course.new(Kevin, Emily, "Math")
Math_2 = Course.new(Kevin, Eric, "Math")
Math_3 = Course.new(Kevin, Kelly, "Math")
Math_4 = Course.new(Kevin, Ruby, "Math")
English_1 = Course.new(Jason,Eric, "English")
English_2 = Course.new(Jason,Emily, "English")
Computer_Science_1 = Course.new(Jason, Ruby, "Computer Science")
Computer_Science_2 = Course.new(Lily, Kelly, "Computer Science")
Physics = Course.new(Jason,Emily, "Physics")
Swimming = Course.new(Jack,Eric, "Swimming")
Chemistry = Course.new(Lily,Ruby, "Chemistry")
# ==================================================








# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
