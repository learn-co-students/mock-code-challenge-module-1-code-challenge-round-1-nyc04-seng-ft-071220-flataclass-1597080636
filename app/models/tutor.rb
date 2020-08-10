require 'pry'

class Tutor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
        @@all
  end

  # Should iterate over the courses and select the ones with Tutors
  def courses
    Course.all.select { |course| course.tutor == self }
  end

  #Should iterate over the students and return those with tutors

  def students
    Student.all.select { |student| student.tutor == self }
  end

  #looking for the student that was tutored by tutor Jack
  #find all students tutored
  #of the students tutored find the student that was tutored by Jack
  #if there is no student tutored by Jack return nil or false
  def tutored_student?(student)
    if students.find { |student| courses.tutor}
  else student  = nil
        
    end
  end

end
