require 'pry'
require 'require_all'
require_all '../models'


tutor_ron = Tutor.new("Ron")
tutor_cath = Tutor.new("Cath")
tutor_peter = Tutor.new("Peter")
tutor_liz = Tutor.new("Liz")

mary = Student.new("Mary")
beth = Student.new("Beth")
thor = Student.new("Thor")
fenny = Student.new("Fenny")
pipe = Student.new("Pipe")
ace = Student.new("Ace")

math1 = Course.new(tutor_ron, mary, "Math101")
music1 = Course.new(tutor_cath, beth, "Music101")
music2 = Course.new(tutor_peter, thor, "Music101")
history1 = Course.new(tutor_liz, fenny, "History101")
history2 = Course.new(tutor_liz, thor, "History101")
math2 = Course.new(tutor_ron, pipe, "Math101")
math3 = Course.new(tutor_ron, ace, "Math101")
swim1 = Course.new(tutor_cath, ace, "Swim101")
english1 = Course.new(tutor_liz, ace, "English101")
english2 = Course.new(tutor_liz, thor, "English101")

tutor_ron.courses
tutor_ron.students
thor.courses
thor.tutors
tutor_ron.tutored_student?(mary)
tutor_ron.tutored_student?(beth)
ace.enrolled_fulltime?
fenny.enrolled_fulltime?


binding.pry
0