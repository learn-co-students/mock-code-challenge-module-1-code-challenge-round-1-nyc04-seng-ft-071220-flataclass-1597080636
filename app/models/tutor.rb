require 'pry'


class Tutor

@@all=[]

attr_accessor :name


def initialize(name_arg)
    @name=name_arg
    @@all << self 
end

def self.all
    @@all
end


def courses
    Course.all.select{|course_instance| course_instance.tutor == self}
      #  binding.pry
end

def students
    courses.map(&:student)
end

def tutored_student?(student)
    students.any?{|student_instance| student_instance==student}
    # binding.pry
    end
  
end
