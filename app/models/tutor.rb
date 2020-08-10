class Tutor

    attr_accessor :name

    @@all = []
    
    def initialize(name_par)
        @name = name_par
        @@all << self
    end

    def self.all
        @@all
    end

end
