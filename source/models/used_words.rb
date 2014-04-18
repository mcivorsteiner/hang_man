# Used words

class UsedWords
  attr_reader :list

  def initialize
    @list = []
  end

  def self.add_words(word)
    @list << word
  end
end