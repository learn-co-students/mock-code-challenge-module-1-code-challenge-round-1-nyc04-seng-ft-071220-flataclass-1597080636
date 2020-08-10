# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

wilson = Student.new("Wilson")
patrick = Student.new("Patrick")
pikachu = Student.new("Pikachu")
spongebob = Student.new("Spongebob")
luffy = Student.new("Luffy")
kuroko = Student.new("Kuroko")
chopper = Student.new("Chopper")
zoro = Student.new("Zoro")
sanji = Student.new("Sanji")
nami = Student.new("Nami")

eric = Tutor.new("Eric")
sylwia = Tutor.new("Sylwia")
annie = Tutor.new("Annie")
isabel = Tutor.new("Isabel")

# (tutor_param, student_param, course_name_param)
history_a = Course.new(eric, wilson, "History 101")
history_b = Course.new(eric, patrick, "History 101")
history_c = Course.new(eric, pikachu, "History 101")
history_d = Course.new(eric, spongebob, "History 101")
history_e = Course.new(eric, luffy, "History 101")
ruby_a = Course.new(sylwia, nami, "Ruby 101")
ruby_b = Course.new(sylwia, sanji, "Ruby 101")
ruby_c = Course.new(sylwia, zoro, "Ruby 101")
ruby_d = Course.new(sylwia, zoro, "Ruby 201")
oop_a = Course.new(annie, chopper, "OOP for beginner")
oop_b = Course.new(annie, kuroko, "OOP for beginner")
oop_c = Course.new(annie, nami, "Advanced OOP Topics")
pry_a = Course.new(isabel, spongebob, "Pry Basics")
pry_b = Course.new(isabel, spongebob, "Pry Advanced")
pry_c = Course.new(isabel, pikachu, "Pry Advanced")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
