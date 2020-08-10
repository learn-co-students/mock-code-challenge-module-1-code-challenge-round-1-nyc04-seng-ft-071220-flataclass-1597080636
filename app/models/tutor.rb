class Tutor

    attr_accessor :name             #name can be changed 
    @@all = []

    def initialize(name)            #`Tutor` is initialized with a name (string)
        @name = name                #`Tutor#name`returns Tutor's name
        @@all << self 
    end 
    def self.all                    #Tutor.all` returns array of all `Tutor` instances
        @@all
    end 

    #Object Relationship Methods
    def courses
    end
    def students
    end 
end
