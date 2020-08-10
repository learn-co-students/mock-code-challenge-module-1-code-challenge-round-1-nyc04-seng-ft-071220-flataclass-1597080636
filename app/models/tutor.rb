require 'pry'

class Tutor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
        @@all
  end
  binding.pry
end
