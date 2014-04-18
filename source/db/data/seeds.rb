require_relative '../../models/word'
require 'random_word_generator'

module TaskSeeder
  def self.seed
    100.times do
      Word.create( word: RandomWordGenerator.word)
      	# .{File.dirname(__FILE__)}/../db/data/words.db".next )
    end
  end
end

