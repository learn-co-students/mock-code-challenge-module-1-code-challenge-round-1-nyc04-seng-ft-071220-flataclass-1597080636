# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#students are James, Jimmy,
#tutors are   Thames, Timmy,
#courses are  Language, Literature, Lindy_Hop
james     = Student.new("James")
jimmy     = Student.new("Jimmy")
thames    = Tutor.new("Thames")
timmy     = Tutor.new("Timmy")
language  = Course.new(thames, james, "Language")
literature= Course.new(timmy, jimmy, "Literature")
lindy_hop = Course.new(thames, jimmy, "Lindy_Hop")
language2= Course.new(thames, jimmy, "language2")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
