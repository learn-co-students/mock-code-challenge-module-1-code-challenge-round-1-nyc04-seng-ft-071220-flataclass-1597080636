reuire 'pry'

   class Tutor
    @@all =[]
    attr_accessor :name 
    # attr_reader 
#   name can be changed !
    
   def initialize(name)
    @name = name
    @@all << self 
   end

   def name 
      @name 
   end

   def self  
    @@all 
   end 
#    returns an array of all the `Tutor` instances that have been initialized
   def tudor 
tudor.select.all 
   end
#    returns an array of all the `Tutor` instances that have been initialized


#  I want to return all the tudor names .. 
# returns the an array of all the "tutor " names 
#  self is all the "tudor class names so i want to shove the names in self and r/t all the names ."
# returns all the name that has been in



end

# binding.pry 
puts "done"

#### Tutor

# - `Tutor#initialize(name)`
#   X- `Tutor` is initialized with a name (string)
#   X- name **can be** changed after the Tutor is initialized
# - `Tutor#name`
#   - returns the Tutor's name
# -X`Tutor.all`
#   - returns an array of all the `Tutor` instances that have been initialized
