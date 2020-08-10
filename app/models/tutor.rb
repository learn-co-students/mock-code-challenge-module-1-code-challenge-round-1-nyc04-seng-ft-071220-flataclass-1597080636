class Tutor
  
# - `Tutor#initialize(name)`
# - `Tutor` is initialized with a name (string)
# - name **can be** changed after the Tutor is initialized
# - `Tutor#name`
# - returns the Tutor's name
# - `Tutor.all`
# - returns an array of all the `Tutor` instances that have been initialized

attr_accessor :tutor_name

@@all = []

    def initialize (tutor_name)
        @tutor_name = tutor_name
        @@all << self
    end

    def self.all
        @@all
    end

    def student
        Student.all
        # - `Tutor#students`
        # - returns an array of `Student` instances tutored by the `Tutor` instance.
    end

    def tutored_student
        # - `Tutor#tutored_student?(student)`
        # - a `Student` instance is the only argument
        # - returns `true` if the `Tutor` has tutored this 
        # `Student` (if there is a `Course` instance that has this `Tutor` and `Student`), 
        # returns `false` otherwise
    end



end
