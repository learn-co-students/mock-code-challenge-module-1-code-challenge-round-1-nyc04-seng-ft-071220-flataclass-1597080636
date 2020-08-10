class Tutor

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # def all_courses
    #     self.Course.select{|tutor| tutor == self}
    # end


end


