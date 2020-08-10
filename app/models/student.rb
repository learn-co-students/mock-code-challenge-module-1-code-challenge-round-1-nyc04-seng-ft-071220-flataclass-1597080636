require 'pry'

class Student

    @@all=[]

    attr_accessor :name_arg

    def initialize(name_arg)
        @name=name_arg
        @@all << self
    end


    def self.all
        @@all
    end

    def courses
        Course.all.select{|course_instance| course_instance.student==self}
           # binding.pry
        end
    

    def tutors
        courses.map(&:tutor)
        end


    
    def courses_count
     courses.count
    end


    def enrolled_fulltime?
        courses_count >3 
        # binding.pry
  end



end
