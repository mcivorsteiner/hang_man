class Game
  attr_reader :false_guesses, :guessed_letters

  def initialize(word)
    @word = word
    @solved = false
    @guessed_letters = []
    @false_guesses = 0
  end

  def check_letter(letter)
    add_guessed_letter(letter)
    if @word.split("").include?(letter)
      return true
    else
      @false_guesses += 1
      return false
    end
  end

  def add_guessed_letter(letter)
    @guessed_letters << letter
  end

  def current_word_status
    word_string = ''
    @word.split('').each do |letter|
      if @guessed_letters.include?(letter)
        word_string << letter
      else
        word_string << '_'
      end
        word_string << ' '
    end
    word_string.strip
  end

  def solved?
    @word.split("").each do |letter|
      return false unless @guessed_letters.include?(letter)
    end
    return true
  end

end