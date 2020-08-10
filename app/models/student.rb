class Student

    #both getter/setter 
    attr_accessor :name

    @@all = []

    # def name
    #     @name
    # end

    # def name=(new_name)
    #     @name = new_name
    # end

    def initialize(name_param)
        @name = name_param
        @@all << self
    end

    def self.all 
        @@all 
    end

end

### p a s s e d
# - `Student#initialize(name)`
#   - `Student` is initialized with a name (string)
#   - name **can be** changed after the `Student` is initialized
# `Student#name`
#   - returns the `Student`'s name
# - `Student.all`
#   - returns an array of all the `Student` instances that have been initialized

