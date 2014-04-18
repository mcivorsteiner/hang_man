require_relative 'controllers/controller'

test = Game.new("hello")

p test.current_word_status
p test.check_letter('z')
p test.current_word_status
p test.check_letter('e')
p test.solved?
p test.current_word_status

p test.check_letter('l')

p test.current_word_status

p test.check_letter('h')
p test.check_letter('o')
p test.solved?
p test.current_word_status


