# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

daisy=Student.new("daisy")
shema=Student.new("shema")
patrick=Student.new("patrick")
nunny=Student.new("nunny")

sylwia=Tutor.new("sylwia")
annie=Tutor.new("annie")
eric=Tutor.new("eric")


# (tutor,student,course_name)
course1=Course.new(sylwia,daisy,"binding.pry")
course2=Course.new(sylwia,shema, "ruby 101")
course3=Course.new(annie, patrick, "javascript")
course4=Course.new(eric, nunny, "react")
course5=Course.new(eric,daisy,"react")
course6=Course.new(annie,daisy, "javascript")

daisy.courses
daisy.tutors
annie.courses
annie.students
eric.tutored_student?(daisy)
eric.tutored_student?(patrick)
daisy.enrolled_fulltime?
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
