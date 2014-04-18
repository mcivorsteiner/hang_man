require_relative '../../models/word'
require 'random_word_generator'

module TaskSeeder
  def self.seed
    100.times do
      Word.create( word: RandomWordGenerator.word,
                   used: false
                  )

    end
  end
end

