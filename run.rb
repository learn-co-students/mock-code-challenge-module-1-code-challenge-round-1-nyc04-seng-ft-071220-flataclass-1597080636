require 'pry'
require 'require_all'

require_all 'app/models'

david = Student.new("david")
luffy = Student.new("Luffy")
kuroko = Student.new("Kuroko")
chopper = Student.new("Chopper")

eric = Tutor.new("eric")
roshi = Tutor.new("roshi")
isabel = Tutor.new("isabel")
snape = Tutor.new("snape")

king_of_pirate = Course.new(roshi, luffy, "Pirate 101")
dark_arts = Course.new(snape, chopper, "Dark Arts")

binding.pry
0