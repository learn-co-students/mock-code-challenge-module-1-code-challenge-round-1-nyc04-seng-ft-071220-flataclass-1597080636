class Tutor
   #my class variable for all Student instances
   @@all = []
     
   #this attribute accessor will allow me to get and reset a student's name
   #so this takes care of the #name method
   attr_accessor :name

   def initialize(name)
       @name = name
       @@all << self
   end

   def self.all
       @@all
   end

   def courses
        Course.all.select do |course|
            course.tutor == self
        end
   end

   def students
        #use the courses method as a helper method
        courses.map{|course|course.student}
   end

   
    def tutored_student?(student)
        #my students method returns an array of students 
        #the tutor has worked with, so I can use it to help
        #if the student is not in the array, then the student has
        #never worked with the tutor before

        self.students.include?(student)
    end





end
