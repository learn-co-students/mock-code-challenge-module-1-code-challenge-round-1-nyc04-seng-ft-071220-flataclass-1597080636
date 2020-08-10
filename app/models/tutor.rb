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

    def courses
        Course.all.select { |course| course.tutor == self }
    end 

    def students
        courses.map(&:student)
    end 

    # def tutored_student?(student)
    #   student_tutored =  courses.find do |course|
    #         course.student == student
    #     end 
    #     !!student_tutored 
        
    # end 

    def tutored_student?(student)
        !!courses.find{ |course|course.student == student }          
    end 
  
end




