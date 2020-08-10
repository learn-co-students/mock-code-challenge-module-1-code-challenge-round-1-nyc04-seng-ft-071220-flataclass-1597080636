# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

david = Student.new("David")
emmanuel = Student.new("Emannuel")
sayana = Student.new("Sayana")
patrick = Student.new("Patrick")


eric = Tutor.new("Eric")
sylwia = Tutor.new("Sylwia")
annie = Tutor.new("Annie")
isabel = Tutor.new("Isabel")

a1 = Course.new(annie,sayana,"Math")
a2 = Course.new(annie,patrick,"Math")
e1 = Course.new(eric,patrick,"Swimming")
e2 = Course.new(eric,david,"Swimming")
s1 = Course.new(sylwia,emmanuel,"Comedy")
s2 = Course.new(sylwia,david,"Comedy")
i1 = Course.new(isabel,sayana,"French")
i2 = Course.new(isabel,david,"Cooking")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
