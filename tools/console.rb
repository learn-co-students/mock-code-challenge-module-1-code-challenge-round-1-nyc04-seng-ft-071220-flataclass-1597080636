# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

eric = Tutor.new("eric")
sylwia = Tutor.new("sylwia")

sam = Student.new("sam")
josh = Student.new("josh")

math = Course.new(eric, sam, "calculus")
english = Course.new(sylwia, sam, "english")
art = Course.new(sylwia, sam, "art")
history = Course.new(eric, josh, "history")

sylwia_students = sylwia.students
eric_students = eric.students

stutor = sylwia.tutored_student?(josh)
stutor2 = sylwia.tutored_student?(sam)

sylwia_courses = sylwia.courses
eric_courses = eric.courses


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
