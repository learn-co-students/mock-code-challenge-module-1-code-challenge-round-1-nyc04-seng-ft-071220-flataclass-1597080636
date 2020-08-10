class Student
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
            course.student == self
        end
   end

   def tutors
        #use the courses method as a helper method
        courses.map{|course|course.tutor}
   end

   def enrolled_fulltime?
        #the courses method I made earlier should be able to help
        my_courses = self.courses

        #I used a ternary here to simplify the boolean logic
        my_courses.length >= 3? true : false
   end
end
