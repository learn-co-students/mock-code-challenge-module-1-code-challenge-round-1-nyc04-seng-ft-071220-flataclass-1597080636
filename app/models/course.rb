class Course

#course belongs to :student
#course belongs_to :tutor
    attr_accessor :title, :student, :tutor

    @@all = []

     def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = course_name
        @@all << self 
        end

   def self.all 
    @@all 

   end


end

