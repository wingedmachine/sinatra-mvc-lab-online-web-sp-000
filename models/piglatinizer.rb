class PigLatinizer
  def piglatinize(phrase)
    phrase.split(' ').map do |word|
      piglatinize_word(word)
    end.join(' ')
  end

  def piglatinize_word(word)
    first_vowel_index = word.index(/[aeiouAEIOU]/)
    "#{word[(first_vowel_index..word.length)]}#{word[0..first_vowel_index]}ay"
  end
end
