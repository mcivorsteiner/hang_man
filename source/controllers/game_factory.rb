require_relative 'controller'

class GameFactory

  def self.new_game
    Game.new(next_word)
  end

  private

  def self.next_word
    word = Word.where('used = ?',false).sample
    word.used = true
    word.save
    word.word
  end
end
