class PigLatinizer

  # def piglatinize(word)
  #   return word if %w[and an in].include?(word) #one syllable exceptions
  #   letters = word.split("")
  #   letters.keep_if {|letter| letter != "."}
  #   if letters.size > 1
  #     until vowel?(letters[0]) 
  #       letters << letters.shift
  #     end
  #     letters << "ay"
  #   end
  #   letters.join
  # end

  def to_pig_latin(text)
    if /^[aeiou]/i.match(text)
      "#{text}way"
    else
      parts = text.split(/([aeiou].*)/)
      "#{parts[1]}#{parts[0]}ay"
    end
  end

  def piglatinize(text)
    words = text.split(" ")
    words.map! {|word| to_pig_latin(word)}
    words.join(" ")
  end

  def vowel?(letter)
    letter.downcase
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
  end
end

 