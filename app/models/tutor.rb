class Tutor
#has_many :courses
#has_many :students, through: courses 

  attr_accessor :name

    @@all = []

     def initialize(name)
        @name = name
        @@all << self 
        end
    #belongs_to :student
   # belongs_to :tutor

   def name
    @name
   end

   def self.all 
    @@all 
   end

end

