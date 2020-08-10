require "pry"

require_relative "course.rb"
require_relative "student.rb"
require_relative "tutor.rb"

#seed data for software engineering course
patrick = Student.new("Patrick")
annie = Tutor.new("Annie")
flatiron_web = Course.new(annie, patrick, "Flatiron Software Engineering")

#seed data for data science course
emmanuel = Student.new("Emmanuel")
isabel = Tutor.new("Isabel")
flatiron_data = Course.new(isabel, emmanuel, "Flatiron Data Science")

#seed data for graphic design course
wavey = Student.new("Waverly")
sylwia = Tutor.new("Sylwia")
flatiron_graphic = Course.new(sylwia, wavey, "Flatiron Graphic Design")



#to test my #courses method for the Tutor class
#I am making Sylwia the tutor for another course
flatiron_algo = Course.new(sylwia,patrick, "Flatiron algorithms")

#to test my #enrolled_fulltime? method 
#I will give Patrick one more course to take
#seed data for my intro to api course
eric = Tutor.new("Eric")
flatiron_api = Course.new(eric, patrick, "Intro to Working with API's")


binding.pry
0
