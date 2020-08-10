require_relative "models/course.rb"
require_relative "models/student.rb"
require_relative "models/tutor.rb"

require 'pry'


# students
franklin = Student.new('Franklin')
marlon = Student.new("Marlon")

# tutors
sylwia = Tutor.new("Sylwia")
annie = Tutor.new("Annie")

# courses
math = Course.new(sylwia, franklin, "math")
science = Course.new(annie, marlon, "science")
spanish = Course.new(annie, franklin, "spanish")

binding.pry
0