# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1=Student.new("Christy")
student2=Student.new("Joby")
student3=Student.new("Emily")

tutor1=Tutor.new("Mr. Smith")
tutor2=Tutor.new("Mr. John")
tutor3=Tutor.new("Mrs. Tropila")
tutor4=Tutor.new("Miss. Reed")

history=Course.new(tutor1, student1, "History")
science=Course.new(tutor2, student2, "Science")
art=Course.new(tutor3, student3, "art")
music=Course.new(tutor1, student2, "music")
english=Course.new(tutor4, student2, "english")
cooking=Course.new(tutor2, student2, "cooking")
compsci=Course.new(tutor1, student3, "computer science")
economics=Course.new(tutor3, student3, "economics")


history.tutor
tutor3.courses
tutor2.students

student3.tutors

history.tutor
history.tutor
music.student

tutor3.tutored_student?(student1)

tutor3.tutored_student?(student2)

student1.courses_count

student3.enrolled_fulltime?



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
