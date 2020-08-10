class Student

    attr_accessor :name

    @@all = []

    def initialize(name_par)
        @name = name_par
        @all << self

    def self.all
        @@all
    end
end

