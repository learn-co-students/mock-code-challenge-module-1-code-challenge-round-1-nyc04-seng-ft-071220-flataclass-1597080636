class Tutor
    @@all = []
    attr_accessor :name
    attr_reader 

    def initialize (name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def self.all
        @@all
    end


    # def tutored_student?(student)
    #     if @@all_courses.include?(student && self)
    #         true 
    #     else 
    #         false

    #     end
    # end

  
end
