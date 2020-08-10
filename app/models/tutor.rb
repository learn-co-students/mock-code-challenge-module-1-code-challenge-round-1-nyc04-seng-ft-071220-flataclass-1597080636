class Tutor

    attr_accessor :name

    @@all = []

    def intialize(name_param)
        @name = name_param 
        @@all << self
    end

    def self.all 
        @@all 
    end
    
end
