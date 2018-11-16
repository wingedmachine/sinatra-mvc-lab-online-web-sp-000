class PigLatinizer
  def piglatinize(phrase)
    phrase.split(' ').map do |word|
      piglatinize_word(word)
    end.join(' ')
  end

  def piglatinize_word(word)
  end
end
